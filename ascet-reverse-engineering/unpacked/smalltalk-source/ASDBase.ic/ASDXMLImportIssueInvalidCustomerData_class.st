"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c01c; bytecode file offset 0x92209c"
!ASDXMLImportIssueInvalidCustomerData class methodsFor: 'recovered'!
description
    ^'Use name="default" for <CustomerData>'
! !

"ASDBase.ic method 0x200240d4; bytecode file offset 0x92209c"
!ASDXMLImportIssueInvalidCustomerData class methodsFor: 'recovered'!
errorDescription
    ^'The <CustomerData> element has no attribute name and can not be processed!!'
! !

"ASDBase.ic method 0x200b5d08; bytecode file offset 0x9b39ac"
!ASDXMLImportIssueInvalidCustomerData class methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('32').
    ^recoveredValue1
! !

