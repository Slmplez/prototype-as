"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b614; bytecode file offset 0x92209c"
!ASDXMLExportIssueNonConsecutiveEnumIndex methodsFor: 'recovered'!
errorDescription
    ^'Enumeration index values are NOT consecutive'
! !

"ASDBase.ic method 0x200b5e28; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueNonConsecutiveEnumIndex methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('08').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe790; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueNonConsecutiveEnumIndex methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

