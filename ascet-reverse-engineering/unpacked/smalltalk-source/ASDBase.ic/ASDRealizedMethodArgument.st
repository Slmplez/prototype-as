"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006cd80; bytecode file offset 0x969c04"
!ASDRealizedMethodArgument methodsFor: 'recovered'!
realizedElement
    | recoveredValue0 |
    recoveredValue0 := realizedElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077a6c; bytecode file offset 0x9757c8"
!ASDRealizedMethodArgument methodsFor: 'recovered'!
isRealizedMethodElement
    ^true
! !

"ASDBase.ic method 0x200c3948; bytecode file offset 0x9c058c"
!ASDRealizedMethodArgument methodsFor: 'recovered'!
realizedElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    realizedElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010edd8; bytecode file offset 0xa0b6b4"
!ASDRealizedMethodArgument methodsFor: 'recovered'!
synchronizeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super synchronizeWith: (recoveredValue0).
    recoveredValue1 := (self) realizedElement.
    (self) realizedElement: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20112e7c; bytecode file offset 0xa0f758"
!ASDRealizedMethodArgument methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201a8668; bytecode file offset 0xaa4f34"
!ASDRealizedMethodArgument methodsFor: 'recovered'!
internalWriteXMLSpecial: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super internalWriteXMLSpecial: (recoveredValue0) owner: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := realizedElement.
    recoveredValue4 := owner.
    recoveredValue5 := (recoveredValue4) xmlRealizedInterface.
    (recoveredValue2) elementRef: (recoveredValue3) in: (recoveredValue5) nameTag: ('masterElementName') oidTag: ('masterElementOID').
    ^self
! !

