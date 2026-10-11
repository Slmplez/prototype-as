"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013020; bytecode file offset 0x912098"
!ASAP2Unit class methodsFor: 'recovered'!
TypeClasses
    | recoveredValue0 |
    recoveredValue0 := TypeClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200200d8; bytecode file offset 0x92209c"
!ASAP2Unit class methodsFor: 'recovered'!
keyWord
    ^'UNIT'
! !

"ASDBase.ic method 0x200246e0; bytecode file offset 0x92209c"
!ASAP2Unit class methodsFor: 'recovered'!
members
    ^#('name' 'longName' 'display' 'type' 'siExponents' 'refUnit' 'unitConversion' 'comments')
! !

"ASDBase.ic method 0x20054194; bytecode file offset 0x951190"
!ASAP2Unit class methodsFor: 'recovered'!
TypeClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TypeClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2007450c; bytecode file offset 0x970de8"
!ASAP2Unit class methodsFor: 'recovered'!
fixedSize
    ^8
! !

"ASDBase.ic method 0x200809fc; bytecode file offset 0x97d2b0"
!ASAP2Unit class methodsFor: 'recovered'!
emBehaviorId
    ^78
! !

"ASDBase.ic method 0x2019b974; bytecode file offset 0xa98244"
!ASAP2Unit class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue2) name: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) longName.
    (recoveredValue5) longName: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) display.
    (recoveredValue1) display: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x203e01e0; bytecode file offset 0xcdcaf0"
!ASAP2Unit class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    super initializeKeyWords.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) TypeClasses: (recoveredValue1).
    recoveredValue2 := (self) TypeClasses.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ASAP2ExtendedSiUnit.
    (recoveredValue3) at: ('EXTENDED_SI') put: (recoveredValue4).
    recoveredValue5 := ASAP2DerivedUnit.
    (recoveredValue2) at: ('DERIVED') put: (recoveredValue5).
    recoveredValue6 := keyWords.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) at: ('SI_EXPONENTS') put: ('getSiExponents:').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) at: ('REF_UNIT') put: ('getRefUnit:').
    (recoveredValue6) at: ('UNIT_CONVERSION') put: ('getUnitConversion:').
    recoveredValue9 := options.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := Association.
    recoveredValue12 := (recoveredValue11) key: ('SI_EXPONENTS') value: ('putIn:siExponents:').
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue9.
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('REF_UNIT') value: ('putIn:refUnit:').
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('UNIT_CONVERSION') value: ('putIn:unitConversion:').
    (recoveredValue9) add: (recoveredValue17).
    ^self
! !

