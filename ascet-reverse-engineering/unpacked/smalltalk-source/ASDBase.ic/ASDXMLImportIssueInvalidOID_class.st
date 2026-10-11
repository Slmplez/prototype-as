"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a498; bytecode file offset 0x92209c"
!ASDXMLImportIssueInvalidOID class methodsFor: 'recovered'!
errorDescription
    ^'An invalid OID has been encountered'
! !

"ASDBase.ic method 0x200263c8; bytecode file offset 0x923928"
!ASDXMLImportIssueInvalidOID class methodsFor: 'recovered'!
description
    ^'Replace invalid OIDs by better ones'
! !

"ASDBase.ic method 0x200b5e88; bytecode file offset 0x9b39ac"
!ASDXMLImportIssueInvalidOID class methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('22').
    ^recoveredValue1
! !

