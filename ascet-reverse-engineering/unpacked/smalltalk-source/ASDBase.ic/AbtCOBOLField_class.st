"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014f04; bytecode file offset 0x912098"
!AbtCOBOLField class methodsFor: 'recovered'!
MsgBaseQuantityError
    | recoveredValue0 |
    recoveredValue0 := MsgBaseQuantityError.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200574d8; bytecode file offset 0x956284"
!AbtCOBOLField class methodsFor: 'recovered'!
fromPic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) analyzePic: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057f48; bytecode file offset 0x956284"
!AbtCOBOLField class methodsFor: 'recovered'!
expand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) expand: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20079174; bytecode file offset 0x975a30"
!AbtCOBOLField class methodsFor: 'recovered'!
maxDigits
    ^18
! !

"ASDBase.ic method 0x200b59b0; bytecode file offset 0x9b2324"
!AbtCOBOLField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016e684; bytecode file offset 0xa6af40"
!AbtCOBOLField class methodsFor: 'recovered'!
doubleByteChars
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ($G) with: ($B) with: ($N).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2047b588; bytecode file offset 0xd77e48"
!AbtCOBOLField class methodsFor: 'recovered'!
countableChars
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ($A).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ($B).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ($X).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ($Z).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ($9).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ($0).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) add: ($/).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) add: ($,).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) add: ($.).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) add: ($C).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) add: ($R).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) add: ($D).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) add: ($B).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) add: ($G).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) add: ($N).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) add: ($+).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) add: ($-).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) add: ($*).
    (recoveredValue2) add: ($$).
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

