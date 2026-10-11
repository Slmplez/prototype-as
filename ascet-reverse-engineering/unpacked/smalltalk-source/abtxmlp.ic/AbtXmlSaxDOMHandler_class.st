"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000500; bytecode file offset 0x18d4c"
!AbtXmlSaxDOMHandler class methodsFor: 'recovered'!
xmlDataClasses
    | recoveredValue0 |
    recoveredValue0 := XmlDataClasses.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200009dc; bytecode file offset 0x191f8"
!AbtXmlSaxDOMHandler class methodsFor: 'recovered'!
xmlDataClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    XmlDataClasses := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20007b2c; bytecode file offset 0x20344"
!AbtXmlSaxDOMHandler class methodsFor: 'recovered'!
lineNumberAt: recoveredArg1 forStream: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := PrimErrReadOnly.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 55]] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtxmlp.ic method 0x20009d70; bytecode file offset 0x225d0"
!AbtXmlSaxDOMHandler class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := AbtXmlNmTokenData.
    (recoveredValue2) at: ('NMTOKEN') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := AbtXmlNmTokensData.
    (recoveredValue4) at: ('NMTOKENS') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SgmlAnyData.
    (recoveredValue6) at: ('ANY') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SgmlCData.
    (recoveredValue8) at: ('CDATA') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := SgmlEmptyData.
    (recoveredValue10) at: ('EMPTY') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := SgmlEntityData.
    (recoveredValue12) at: ('ENTITY') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := AbtXmlEntitiesData.
    (recoveredValue14) at: ('ENTITIES') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := SgmlIdData.
    (recoveredValue16) at: ('ID') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := SgmlIdRefData.
    (recoveredValue18) at: ('IDREF') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SgmlIdRefsData.
    (recoveredValue20) at: ('IDREFS') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := SgmlNotationData.
    (recoveredValue22) at: ('NOTATION') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := SgmlPCData.
    (recoveredValue24) at: ('PCDATA') put: (recoveredValue25).
    (self) xmlDataClasses: (recoveredValue1).
    super initializeAfterLoad.
    ^self
! !

