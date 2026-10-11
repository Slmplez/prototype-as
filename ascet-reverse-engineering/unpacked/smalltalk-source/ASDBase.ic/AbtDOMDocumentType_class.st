"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200427b4; bytecode file offset 0x93f170"
!AbtDOMDocumentType class methodsFor: 'recovered'!
domParserClass
    | recoveredValue0 |
    recoveredValue0 := ('AbtXmlDOMParser') abrAsClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008651c; bytecode file offset 0x982e18"
!AbtDOMDocumentType class methodsFor: 'recovered'!
from: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) domParserClass.
    recoveredValue1 := (recoveredValue0) newValidatingParser.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) parseDTD: (recoveredValue2).
    ^recoveredValue3
! !

