"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cbe0; bytecode file offset 0x92209c"
!ASDXMLExportIssueInvalidPath methodsFor: 'recovered'!
errorDescription
    ^'Invalid export path'
! !

"ASDBase.ic method 0x200b5e70; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueInvalidPath methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('02').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe7b8; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueInvalidPath methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

