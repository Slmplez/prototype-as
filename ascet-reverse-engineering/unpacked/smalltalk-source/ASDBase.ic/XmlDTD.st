"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201b5780; bytecode file offset 0xab2044"
!XmlDTD methodsFor: 'recovered'!
getOrAddElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := XmlElementDeclaration.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) dtd: (self) name: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020f748; bytecode file offset 0xb0c03c"
!XmlDTD methodsFor: 'recovered'!
elementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := SgmlSyntaxError.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) code: ('unknownTag') text: ('Tag %1 is unknown') with: (recoveredBlock8Value1).
    recoveredBlock8Value3 := (recoveredBlock8Value2) signalException.
    ^recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2027a5cc; bytecode file offset 0xb76eb4"
!XmlDTD methodsFor: 'recovered'!
parseFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := XmlDTDPreprocessor.
    recoveredValue5 := (recoveredValue4) usingDTD: (self).
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) inputStream: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) outputStream: (recoveredValue9).
    (recoveredValue5) preprocess.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) reset.
    recoveredValue11 := XmlDocumentParser.
    recoveredValue12 := (recoveredValue11) usingDTD: (self).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) parseStream: (recoveredValue13).
    (self) checkConsistency.
    ^self
! !

