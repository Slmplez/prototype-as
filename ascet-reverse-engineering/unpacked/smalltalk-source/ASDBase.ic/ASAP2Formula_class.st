"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001877c; bytecode file offset 0x92209c"
!ASAP2Formula class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'formula:' 'formulaInvers:')
! !

"ASDBase.ic method 0x2001a69c; bytecode file offset 0x92209c"
!ASAP2Formula class methodsFor: 'recovered'!
keyWord
    ^'FORMULA'
! !

"ASDBase.ic method 0x20072564; bytecode file offset 0x96ee18"
!ASAP2Formula class methodsFor: 'recovered'!
emBehaviorId
    ^129
! !

"ASDBase.ic method 0x200b6800; bytecode file offset 0x9b39ac"
!ASAP2Formula class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('formula' 'formulaInvers')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b72ac; bytecode file offset 0x9b3b98"
!ASAP2Formula class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015b724; bytecode file offset 0xa57ff8"
!ASAP2Formula class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 formula: recoveredArg3 formulaInvers: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) formula: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    (recoveredValue3) formulaInvers: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f2cd4; bytecode file offset 0xaef814"
!ASAP2Formula class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('FORMULA_INV') put: ('getFormulaInvers:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('FORMULA_INV') value: ('putIn:formulaInvers:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

