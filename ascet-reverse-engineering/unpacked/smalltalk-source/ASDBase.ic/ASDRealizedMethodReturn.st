"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006d158; bytecode file offset 0x969c04"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
realizedElement
    | recoveredValue0 |
    recoveredValue0 := realizedElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f1c; bytecode file offset 0x9757c8"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
isRealizedMethodElement
    ^true
! !

"ASDBase.ic method 0x20077f14; bytecode file offset 0x9757c8"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
isRealizedMethodReturn
    ^true
! !

"ASDBase.ic method 0x200c3848; bytecode file offset 0x9c058c"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
realizedElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    realizedElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010edf0; bytecode file offset 0xa0b6b4"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
synchronizeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super synchronizeWith: (recoveredValue0).
    recoveredValue1 := (self) realizedElement.
    (self) realizedElement: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20112e64; bytecode file offset 0xa0f758"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
duplicate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super duplicate.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) realizedElement.
    (recoveredValue1) realizedElement: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201478ec; bytecode file offset 0xa441b0"
!ASDRealizedMethodReturn methodsFor: 'recovered'!
internalWriteXMLSpecial: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super internalWriteXMLSpecial: (recoveredValue0) owner: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := aliasName.
    (recoveredValue2) attr: ('masterElementOID') localId: (recoveredValue3).
    ^self
! !

