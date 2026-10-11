"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014fc4; bytecode file offset 0x912098"
!DBU32Item methodsFor: 'recovered'!
BitClass
    | recoveredValue0 |
    recoveredValue0 := DB32BitItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015750; bytecode file offset 0x912098"
!DBU32Item methodsFor: 'recovered'!
MaskClass
    | recoveredValue0 |
    recoveredValue0 := DB32BitFieldItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001952c; bytecode file offset 0x92209c"
!DBU32Item methodsFor: 'recovered'!
asap2DataType
    ^'ULONG'
! !

"ASDBase.ic method 0x200389dc; bytecode file offset 0x935c54"
!DBU32Item methodsFor: 'recovered'!
getItemFromString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asIntegerFromHex.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f6c8; bytecode file offset 0x93bf94"
!DBU32Item methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200746ac; bytecode file offset 0x970f98"
!DBU32Item methodsFor: 'recovered'!
floatDigits
    ^10
! !

"ASDBase.ic method 0x20083258; bytecode file offset 0x97fb7c"
!DBU32Item methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ace94; bytecode file offset 0x9a9794"
!DBU32Item methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017cf84; bytecode file offset 0xa798a8"
!DBU32Item methodsFor: 'recovered'!
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
    (recoveredValue4) apiUInteger32ToS32Array: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017d014; bytecode file offset 0xa79968"
!DBU32Item methodsFor: 'recovered'!
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
    (recoveredValue4) apiUInteger32ToDoubleArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

