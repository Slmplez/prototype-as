"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019c04; bytecode file offset 0x92209c"
!ASDXMLImportIssueShortNameNotFound methodsFor: 'recovered'!
autofixText
    ^'Ignore data referring to this generator'
! !

"ASDBase.ic method 0x20178560; bytecode file offset 0xa74e44"
!ASDXMLImportIssueShortNameNotFound methodsFor: 'recovered'!
initOn: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('No generator with name ') , (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    super initOn: (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    name := recoveredValue3.
    issueType := 'warning'.
    ^self
! !

"ASDBase.ic method 0x20193f40; bytecode file offset 0xa9080c"
!ASDXMLImportIssueShortNameNotFound methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := name.
    recoveredValue2 := ('No generator with ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' when reading class ').
    recoveredValue4 := protoItem.
    recoveredValue5 := (recoveredValue4) path.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (' (Ignoring)').
    (recoveredValue0) logWarning: (recoveredValue7).
    ^true
! !

