"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e968; bytecode file offset 0x92209c"
!DBHexItem methodsFor: 'recovered'!
baseString
    ^'hex'
! !

"ASDBase.ic method 0x20086818; bytecode file offset 0x9830d4"
!DBHexItem methodsFor: 'recovered'!
getItem: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getString: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asIntegerFromHex.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c9da8; bytecode file offset 0x9c6660"
!DBHexItem methodsFor: 'recovered'!
putIn: recoveredArg1 item: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) putIn: (recoveredValue1) hex: (recoveredValue2) showRadix: (false).
    ^self
! !

