"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d23c; bytecode file offset 0x909e08"
!ASDXMLImportIssueUnsuitableElement methodsFor: 'recovered'!
repair: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20024254; bytecode file offset 0x92209c"
!ASDXMLImportIssueUnsuitableElement methodsFor: 'recovered'!
autofixText
    ^'Ignore element'
! !

"ASDBase.ic method 0x20235ea0; bytecode file offset 0xb32770"
!ASDXMLImportIssueUnsuitableElement methodsFor: 'recovered'!
initOn: recoveredArg1 name: recoveredArg2 want: recoveredArg3 is: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('Unsuitable element: ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' want: ').
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' is: ').
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    super initOn: (recoveredValue7) item: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    want := recoveredValue9.
    recoveredValue10 := recoveredArg4.
    is := recoveredValue10.
    issueType := 'warning'.
    ^self
! !

