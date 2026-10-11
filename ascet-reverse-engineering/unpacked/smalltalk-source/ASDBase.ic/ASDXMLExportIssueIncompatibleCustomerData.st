"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200197b4; bytecode file offset 0x92209c"
!ASDXMLExportIssueIncompatibleCustomerData methodsFor: 'recovered'!
errorDescription
    ^'Incompatible <CustomerData>'
! !

"ASDBase.ic method 0x20019e74; bytecode file offset 0x92209c"
!ASDXMLExportIssueIncompatibleCustomerData methodsFor: 'recovered'!
description
    ^'Content of <CustomerData> not compatibel with ASCET V5.x detected. The <CustomerData> tag will get lost.'
! !

"ASDBase.ic method 0x200b5cc0; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueIncompatibleCustomerData methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('05').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe740; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueIncompatibleCustomerData methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'warning'.
    ^self
! !

