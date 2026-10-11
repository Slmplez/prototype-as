"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20273ff8; bytecode file offset 0xb708dc"
!AbtXmlSchemaQNameConverter methodsFor: 'recovered'!
objectFromString: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtXmlQName.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := AbtXmlUtility.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) splitQName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) first.
    (recoveredValue6) prefix: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: (2).
    (recoveredValue5) localName: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) currentElement.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (recoveredValue14) prefix.
    recoveredValue16 := (recoveredValue13) uriForPrefix: (recoveredValue15).
    (recoveredValue11) namespaceUri: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    ^recoveredValue17
! !

