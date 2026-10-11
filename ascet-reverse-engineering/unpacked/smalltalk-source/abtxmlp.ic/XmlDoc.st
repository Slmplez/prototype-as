"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000ae0; bytecode file offset 0x19410"
!XmlDoc methodsFor: 'recovered'!
parseStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parser.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) parseStream: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20002c18; bytecode file offset 0x1b410"
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

"abtxmlp.ic method 0x200054f4; bytecode file offset 0x1dd00"
!XmlDoc methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) dtd.
    (self) dtd: (recoveredValue1).
    recoveredValue2 := SystemExceptions.
    recoveredValue3 := (recoveredValue2) new.
    (self) idTable: (recoveredValue3).
    recoveredValue4 := SystemExceptions.
    recoveredValue5 := (recoveredValue4) new.
    (self) currentAttributeValues: (recoveredValue5).
    recoveredValue6 := XmlFactory.
    (self) factory: (recoveredValue6).
    ^self
! !

