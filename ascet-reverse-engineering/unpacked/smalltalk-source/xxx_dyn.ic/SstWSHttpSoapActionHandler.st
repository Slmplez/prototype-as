"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200166e0; bytecode file offset 0x777cc"
!SstWSHttpSoapActionHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSTransportMessageRequest.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) header.
    recoveredValue4 := SOAPAction.
    recoveredValue5 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := SstSoapFault.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) clientFault: (recoveredBlock13Value1).
    recoveredBlock13Value3 := (recoveredBlock13Value2) faultString: ('No SOAPAction present in HTTP Header').
    recoveredBlock13Value4 := (recoveredBlock13Value3) raise.
    recoveredBlock13Value4
].
    (recoveredValue3) at: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^self
! !

