"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009ce04; bytecode file offset 0x9996e0"
!AbtXmlDOMParser class methodsFor: 'recovered'!
newNonValidatingParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtXmlNonValidatingDTD.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) usingDTD: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) validate: (false).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ce58; bytecode file offset 0x99971c"
!AbtXmlDOMParser class methodsFor: 'recovered'!
newValidatingParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMDocumentType.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) usingDTD: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) validate: (true).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20128b2c; bytecode file offset 0xa25438"
!AbtXmlDOMParser class methodsFor: 'recovered'!
test
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlDOMParser.
    recoveredValue1 := (recoveredValue0) newValidatingParser.
    recoveredValue2 := (recoveredValue1) parseExternalDTD: ('sdclass') publicId: (nil) systemId: ('g:\xmlexport\sdclass.dtd').
    (recoveredValue2) document.
    ^self
! !

"ASDBase.ic method 0x20128b4c; bytecode file offset 0xa25438"
!AbtXmlDOMParser class methodsFor: 'recovered'!
test2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlDOMParser.
    recoveredValue1 := (recoveredValue0) newValidatingParser.
    recoveredValue2 := (recoveredValue1) parseExternalDTD: ('msrsw') publicId: (nil) systemId: ('g:\programme\vast55\inca4.0\msrswlocal.dtd').
    (recoveredValue2) document.
    ^self
! !

"ASDBase.ic method 0x20128b6c; bytecode file offset 0xa25438"
!AbtXmlDOMParser class methodsFor: 'recovered'!
test3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlDOMParser.
    recoveredValue1 := (recoveredValue0) newValidatingParser.
    recoveredValue2 := (recoveredValue1) parseExternalDTD: ('cdf') publicId: (nil) systemId: ('G:\Programme\vast55\inca4.0\ASAM Calibration Data Exchange Format\cdf.xsd').
    (recoveredValue2) document.
    ^self
! !

