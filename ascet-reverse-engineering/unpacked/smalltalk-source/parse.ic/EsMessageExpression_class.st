"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20004f6c; bytecode file offset 0x1a5e8"
!EsMessageExpression class methodsFor: 'recovered'!
receiver: recoveredArg1 messagePattern: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := InlineSelectors.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) selectorString.
    recoveredValue3 := [
    self
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) receiver: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) messagePattern: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) sourceStart.
    (recoveredValue10) sourceStart: (recoveredValue12).
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) sourceEnd.
    recoveredValue15 := (recoveredValue5) sourceEnd: (recoveredValue14).
    ^recoveredValue15
! !

"parse.ic method 0x20007f4c; bytecode file offset 0x1d628"
!EsMessageExpression class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    InlineSelectors := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := EsWhileTrue.
    (recoveredValue3) at: ('whileTrue:') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := EsWhileFalse.
    (recoveredValue5) at: ('whileFalse:') put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := EsIfTrue.
    (recoveredValue7) at: ('ifTrue:') put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := EsIfFalse.
    (recoveredValue9) at: ('ifFalse:') put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := EsIfTrueIfFalse.
    (recoveredValue11) at: ('ifTrue:ifFalse:') put: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := EsIfFalseIfTrue.
    (recoveredValue13) at: ('ifFalse:ifTrue:') put: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := EsAnd.
    (recoveredValue15) at: ('and:') put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := EsOr.
    (recoveredValue17) at: ('or:') put: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := EsTimesRepeat.
    (recoveredValue19) at: ('timesRepeat:') put: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    recoveredValue22 := EsToDo.
    (recoveredValue21) at: ('to:do:') put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := EsIdentical.
    (recoveredValue23) at: ('==') put: (recoveredValue24).
    recoveredValue25 := recoveredValue1.
    recoveredValue26 := EsNotIdentical.
    (recoveredValue25) at: ('~~') put: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := EsIsNil.
    (recoveredValue27) at: ('isNil') put: (recoveredValue28).
    recoveredValue29 := recoveredValue1.
    recoveredValue30 := EsNotNil.
    (recoveredValue29) at: ('notNil') put: (recoveredValue30).
    recoveredValue31 := EsNot.
    (recoveredValue1) at: ('not') put: (recoveredValue31).
    ^self
! !

