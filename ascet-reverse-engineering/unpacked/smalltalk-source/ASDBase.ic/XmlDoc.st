"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200573b8; bytecode file offset 0x956284"
!XmlDoc methodsFor: 'recovered'!
parseStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parser.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) parseStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e05ec; bytecode file offset 0x9dceb0"
!XmlDoc methodsFor: 'recovered'!
parser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := XmlDocumentParser.
    recoveredValue1 := (self) dtd.
    recoveredValue2 := (recoveredValue0) usingDTD: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) document: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201effec; bytecode file offset 0xaec8c4"
!XmlDoc methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) dtd.
    (self) dtd: (recoveredValue1).
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    (self) idTable: (recoveredValue3).
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    (self) currentAttributeValues: (recoveredValue5).
    recoveredValue6 := XmlFactory.
    (self) factory: (recoveredValue6).
    ^self
! !

