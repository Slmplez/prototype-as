"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20001b18; bytecode file offset 0x1a308"
!AbtDOMImplementation methodsFor: 'recovered'!
hasFeature: recoveredArg1 version: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) = ('XML').
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20002e0c; bytecode file offset 0x1b604"
!AbtDOMImplementation methodsFor: 'recovered'!
createDocumentNamed: recoveredArg1 type: recoveredArg2 nameSpaceURI: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtDOMDocument.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg3.
    (recoveredValue2) uri: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) dtd: (recoveredValue4).
    ^recoveredValue5
! !

"abtxmlp.ic method 0x20003e74; bytecode file offset 0x1c670"
!AbtDOMImplementation methodsFor: 'recovered'!
createDocumentTypeNamed: recoveredArg1 systemId: recoveredArg2 publicId: recoveredArg3 internalSubset: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtDOMDocumentType.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) systemId: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) publicId: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue1) internalSubset: (recoveredValue6).
    ^recoveredValue7
! !

