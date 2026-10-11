"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200128dc; bytecode file offset 0x912098"
!DBU16Item methodsFor: 'recovered'!
MaskClass
    | recoveredValue0 |
    recoveredValue0 := DB16BitFieldItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200144a8; bytecode file offset 0x912098"
!DBU16Item methodsFor: 'recovered'!
BitClass
    | recoveredValue0 |
    recoveredValue0 := DB16BitItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020ac8; bytecode file offset 0x92209c"
!DBU16Item methodsFor: 'recovered'!
asap2DataType
    ^'UWORD'
! !

"ASDBase.ic method 0x20038d30; bytecode file offset 0x935c54"
!DBU16Item methodsFor: 'recovered'!
getItemFromString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asIntegerFromHex.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f248; bytecode file offset 0x93bf94"
!DBU16Item methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt16Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072ec8; bytecode file offset 0x96f7ac"
!DBU16Item methodsFor: 'recovered'!
floatDigits
    ^5
! !

"ASDBase.ic method 0x200832ac; bytecode file offset 0x97fb7c"
!DBU16Item methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint16At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aced0; bytecode file offset 0x9a9794"
!DBU16Item methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) uint16At: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017cfcc; bytecode file offset 0xa798a8"
!DBU16Item methodsFor: 'recovered'!
castToS32: recoveredArg1 dim: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (4) * (recoveredValue1).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := RBBcrtl32DLL.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue4) apiUInteger16ToS32Array: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017d08c; bytecode file offset 0xa79968"
!DBU16Item methodsFor: 'recovered'!
castToDouble: recoveredArg1 dim: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (8) * (recoveredValue1).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := RBBcrtl32DLL.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue4) apiUInteger16ToDoubleArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

