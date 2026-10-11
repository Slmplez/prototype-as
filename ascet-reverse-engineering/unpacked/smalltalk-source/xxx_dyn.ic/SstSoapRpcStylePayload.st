"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2001aa98; bytecode file offset 0x7bb74"
!SstSoapRpcStylePayload methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := super abtXmlPrintOn: (recoveredBlock7Value0) context: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) shouldPrintTypes: (recoveredValue2).
    (recoveredValue0) executePrintBlock: (recoveredValue1) printTypes: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) serializer.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue5) abtXmlPrintReferencesOn: (recoveredValue6) context: (recoveredValue7).
    ^self
! !

