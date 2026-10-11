"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006d318; bytecode file offset 0x969c04"
!AbtCHandleField methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := length.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200afbc8; bytecode file offset 0x9ac4a4"
!AbtCHandleField methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    type := self.
    recoveredValue0 := super initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3b50; bytecode file offset 0x9c058c"
!AbtCHandleField methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    length := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20169024; bytecode file offset 0xa658e0"
!AbtCHandleField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := offset.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := length.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredValue11 := (recoveredValue1) memcpyFrom: (recoveredValue4) to: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20169ac0; bytecode file offset 0xa66380"
!AbtCHandleField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abrAsCLangHandle.
    recoveredValue2 := length.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) data.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := offset.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    (recoveredValue1) memcpyFrom: (0) to: (recoveredValue3) into: (recoveredValue5) startingAt: (recoveredValue8).
    ^self
! !

