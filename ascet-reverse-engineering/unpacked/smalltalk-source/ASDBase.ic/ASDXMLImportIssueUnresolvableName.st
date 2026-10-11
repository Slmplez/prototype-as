"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019928; bytecode file offset 0x92209c"
!ASDXMLImportIssueUnresolvableName methodsFor: 'recovered'!
autofixText
    ^'Ignore the item'
! !

"ASDBase.ic method 0x2017857c; bytecode file offset 0xa74e44"
!ASDXMLImportIssueUnresolvableName methodsFor: 'recovered'!
initOn: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('Unresolvable name ') , (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    super initOn: (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    name := recoveredValue3.
    issueType := 'warning'.
    ^self
! !

"ASDBase.ic method 0x20193f20; bytecode file offset 0xa9080c"
!ASDXMLImportIssueUnresolvableName methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := name.
    recoveredValue2 := ('Could not resolve name ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' when reading class ').
    recoveredValue4 := protoItem.
    recoveredValue5 := (recoveredValue4) path.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (' (Ignoring)').
    (recoveredValue0) logWarning: (recoveredValue7).
    ^true
! !

