"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ab2c; bytecode file offset 0x908be4"
!ASAP2CompuMethod class methodsFor: 'recovered'!
formulaType
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a4ec; bytecode file offset 0x92209c"
!ASAP2CompuMethod class methodsFor: 'recovered'!
keyWord
    ^'COMPU_METHOD'
! !

"ASDBase.ic method 0x2001f7b4; bytecode file offset 0x92209c"
!ASAP2CompuMethod class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'type:' 'format:' 'unit:' 'formula:' 'coeffs:' 'compuTabRef:' 'refUnit:')
! !

"ASDBase.ic method 0x20080214; bytecode file offset 0x97cac8"
!ASAP2CompuMethod class methodsFor: 'recovered'!
emBehaviorId
    ^45
! !

"ASDBase.ic method 0x200b6428; bytecode file offset 0x9b39ac"
!ASAP2CompuMethod class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('type' 'format' 'unit' 'formula' 'coeffs' 'compuTabRef' 'refUnit')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7668; bytecode file offset 0x9b3f54"
!ASAP2CompuMethod class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202730ac; bytecode file offset 0xb6f97c"
!ASAP2CompuMethod class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 type: recoveredArg3 format: recoveredArg4 unit: recoveredArg5 formula: recoveredArg6 coeffs: recoveredArg7 compuTabRef: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) type: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) format: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) unit: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg6.
    (recoveredValue10) formula: (recoveredValue11).
    recoveredValue12 := recoveredValue3.
    recoveredValue13 := recoveredArg7.
    (recoveredValue12) coeffs: (recoveredValue13).
    recoveredValue14 := recoveredArg8.
    (recoveredValue3) compuTabRef: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x203ca440; bytecode file offset 0xcc6d8c"
!ASAP2CompuMethod class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('FORMULA') put: ('getFormula:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('COEFFS') put: ('getCoeffs:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('COMPU_TAB_REF') put: ('getCompuTabRef:').
    (recoveredValue0) at: ('REF_UNIT') put: ('getRefUnit:').
    recoveredValue4 := options.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('FORMULA') value: ('putIn:formula:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('COEFFS') value: ('putIn:coeffs:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('COMPU_TAB_REF') value: ('putIn:compuTabRef:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('REF_UNIT') value: ('putIn:refUnit:').
    (recoveredValue4) add: (recoveredValue15).
    ^self
! !

