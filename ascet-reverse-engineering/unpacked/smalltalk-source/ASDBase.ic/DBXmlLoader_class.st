"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009ce1c; bytecode file offset 0x9996e0"
!DBXmlLoader class methodsFor: 'recovered'!
newNonValidatingParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtXmlNonValidatingDTD.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) usingDTD: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) validate: (false).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ce40; bytecode file offset 0x99971c"
!DBXmlLoader class methodsFor: 'recovered'!
newValidatingParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMDocumentType.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) usingDTD: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) validate: (true).
    ^recoveredValue3
! !

