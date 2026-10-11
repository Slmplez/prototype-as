"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200000e0; bytecode file offset 0x15744"
!CodeStream class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    recoveredValue0 := (self) initializeOnLoad.
    ^recoveredValue0
! !

"parse.ic method 0x20000144; bytecode file offset 0x157c0"
!CodeStream class methodsFor: 'recovered'!
inlinedSelectors
    | recoveredValue0 |
    recoveredValue0 := InlinedSelectors.
    ^recoveredValue0
! !

"parse.ic method 0x20000fd4; bytecode file offset 0x16628"
!CodeStream class methodsFor: 'recovered'!
makeSmallInteger: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"parse.ic method 0x20001f40; bytecode file offset 0x17598"
!CodeStream class methodsFor: 'recovered'!
makeCharacter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) * (16).
    recoveredValue3 := (recoveredValue2) + (6).
    ^recoveredValue3
! !

"parse.ic method 0x20002474; bytecode file offset 0x17adc"
!CodeStream class methodsFor: 'recovered'!
returnBytecodes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := BCreturnTOS.
    recoveredValue2 := BCreturnTOSfromBlockContext.
    recoveredValue3 := BCreturnTOSfromMethodContext.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"parse.ic method 0x20003024; bytecode file offset 0x1868c"
!CodeStream class methodsFor: 'recovered'!
on: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EsByteCodeArray.
    recoveredValue1 := (recoveredValue0) new: (100).
    recoveredValue2 := super on: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) initialize: (recoveredValue4).
    ^recoveredValue2
! !

"parse.ic method 0x20008278; bytecode file offset 0x1d96c"
!CodeStream class methodsFor: 'recovered'!
initializeOnLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    ExtraSelfPush := true.
    DropThreshold := 1.
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    InlinedSelectors := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := BCsendPlus.
    (recoveredValue3) at: ('+') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := BCsendMinus.
    (recoveredValue5) at: ('-') put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := BCsendLessThan.
    (recoveredValue7) at: ('<') put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := BCsendLessEqual.
    (recoveredValue9) at: ('<=') put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := BCsendGreaterThan.
    (recoveredValue11) at: ('>') put: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := BCsendGreaterEqual.
    (recoveredValue13) at: ('>=') put: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := BCsendEqual.
    (recoveredValue15) at: ('=') put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := BCsendNotEqual.
    (recoveredValue17) at: ('~=') put: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := BCsendEqualEqual.
    (recoveredValue19) at: ('==') put: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    recoveredValue22 := BCsendSlashSlash.
    (recoveredValue21) at: ('//') put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := BCsendBackslashBackslash.
    (recoveredValue23) at: ('\\') put: (recoveredValue24).
    recoveredValue25 := recoveredValue1.
    recoveredValue26 := BCsendIsNil.
    (recoveredValue25) at: ('isNil') put: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := BCsendNotNil.
    (recoveredValue27) at: ('notNil') put: (recoveredValue28).
    recoveredValue29 := recoveredValue1.
    recoveredValue30 := BCsendTildeTilde.
    (recoveredValue29) at: ('~~') put: (recoveredValue30).
    recoveredValue31 := recoveredValue1.
    recoveredValue32 := BCsendBetweenAnd.
    (recoveredValue31) at: ('between:and:') put: (recoveredValue32).
    recoveredValue33 := recoveredValue1.
    recoveredValue34 := BCsendNot.
    (recoveredValue33) at: ('not') put: (recoveredValue34).
    recoveredValue35 := BCsendTimes.
    (recoveredValue1) at: ('*') put: (recoveredValue35).
    ^self
! !

