"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b2f0; bytecode file offset 0x92209c"
!ASDXMLExportIssueWrongBackReferenceConfig methodsFor: 'recovered'!
errorDescription
    ^'Wrong Back Reference in Config'
! !

"ASDBase.ic method 0x200b5b40; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueWrongBackReferenceConfig methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('10').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe7cc; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueWrongBackReferenceConfig methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

