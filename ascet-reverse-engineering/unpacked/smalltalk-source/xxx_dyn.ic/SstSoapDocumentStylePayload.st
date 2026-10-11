"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20018d1c; bytecode file offset 0x79df4"
!SstSoapDocumentStylePayload methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) elements.
    recoveredBlock7Value1 := [:recoveredBlock7Block15Arg1 | 
    | recoveredBlock7Block15Value0 recoveredBlock7Block15Value1 recoveredBlock7Block15Value2 recoveredBlock7Block15Value3 |
    recoveredBlock7Block15Value0 := recoveredBlock7Block15Arg1.
    recoveredBlock7Block15Value1 := recoveredArg1.
    recoveredBlock7Block15Value2 := recoveredArg2.
    recoveredBlock7Block15Value3 := (recoveredBlock7Block15Value0) abtXmlPrintOn: (recoveredBlock7Block15Value1) context: (recoveredBlock7Block15Value2).
    recoveredBlock7Block15Value3
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) do: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) shouldPrintTypes: (recoveredValue2).
    (recoveredValue0) executePrintBlock: (recoveredValue1) printTypes: (recoveredValue3).
    ^self
! !

