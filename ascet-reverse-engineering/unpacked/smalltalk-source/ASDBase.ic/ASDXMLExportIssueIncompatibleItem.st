"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200222c8; bytecode file offset 0x92209c"
!ASDXMLExportIssueIncompatibleItem methodsFor: 'recovered'!
errorDescription
    ^'Incompatible item'
! !

"ASDBase.ic method 0x200b5b10; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueIncompatibleItem methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('06').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe7f4; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueIncompatibleItem methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

