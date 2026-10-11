"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20031f14; bytecode file offset 0x934580"
!ASDXMLImportIssueInvalidCustomerData methodsFor: 'recovered'!
autofixText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) description.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20141fd8; bytecode file offset 0xa3e89c"
!ASDXMLImportIssueInvalidCustomerData methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := customerDataInfo.
    recoveredValue1 := customerData.
    (recoveredValue0) at: ('default') put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) autofixText.
    (recoveredValue2) logWarning: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x201884fc; bytecode file offset 0xa84dc0"
!ASDXMLImportIssueInvalidCustomerData methodsFor: 'recovered'!
initOn: recoveredArg1 customerData: recoveredArg2 item: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    super initOn: ('Invalid <CustomerData>') item: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    customerDataInfo := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    customerData := recoveredValue2.
    issueType := 'warning'.
    ^self
! !

