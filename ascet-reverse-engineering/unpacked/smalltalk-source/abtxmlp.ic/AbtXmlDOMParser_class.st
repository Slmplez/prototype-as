"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20001c64; bytecode file offset 0x1a45c"
!AbtXmlDOMParser class methodsFor: 'recovered'!
newNonValidatingParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtXmlNonValidatingDTD.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) usingDTD: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) validate: (false).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001c88; bytecode file offset 0x1a480"
!AbtXmlDOMParser class methodsFor: 'recovered'!
newValidatingParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMDocumentType.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) usingDTD: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) validate: (true).
    ^recoveredValue3
! !

