"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000524; bytecode file offset 0x18d4c"
!SgmlParser class methodsFor: 'recovered'!
dataClasses
    | recoveredValue0 |
    recoveredValue0 := DataClasses.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000854; bytecode file offset 0x19044"
!SgmlParser class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) error: ('Use #usingDTD: to create a new parser instance').
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200009c4; bytecode file offset 0x191f8"
!SgmlParser class methodsFor: 'recovered'!
dataClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DataClasses := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20003474; bytecode file offset 0x1bc6c"
!SgmlParser class methodsFor: 'recovered'!
usingDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) dtd: (recoveredValue3).
    ^recoveredValue0
! !

"abtxmlp.ic method 0x2000ad84; bytecode file offset 0x23614"
!SgmlParser class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SgmlAnyData.
    (recoveredValue2) at: ('ANY') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := SgmlCData.
    (recoveredValue4) at: ('CDATA') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SgmlEmptyData.
    (recoveredValue6) at: ('EMPTY') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SgmlEntityData.
    (recoveredValue8) at: ('ENTITY') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := SgmlIdData.
    (recoveredValue10) at: ('ID') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := SgmlIdRefData.
    (recoveredValue12) at: ('IDREF') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := SgmlIdRefsData.
    (recoveredValue14) at: ('IDREFS') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := SgmlNameData.
    (recoveredValue16) at: ('NAME') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := SgmlNamesData.
    (recoveredValue18) at: ('NAMES') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SgmlNData.
    (recoveredValue20) at: ('NDATA') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := SgmlNotationData.
    (recoveredValue22) at: ('NOTATION') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := SgmlNumberData.
    (recoveredValue24) at: ('NUMBER') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := SgmlNumbersData.
    (recoveredValue26) at: ('NUMBERS') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := SgmlNuTokenData.
    (recoveredValue28) at: ('NUTOKEN') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := SgmlNuTokensData.
    (recoveredValue30) at: ('NUTOKENS') put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := SgmlPCData.
    (recoveredValue32) at: ('PCDATA') put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := SgmlRCData.
    (recoveredValue34) at: ('RCDATA') put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := SgmlTokenData.
    (recoveredValue36) at: ('TOKEN') put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := SgmlTokensData.
    (recoveredValue38) at: ('TOKENS') put: (recoveredValue39).
    (self) dataClasses: (recoveredValue1).
    ^self
! !

