"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016d78; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
implIntervalRightKey
    ^'IMPL.INTERVAL.RIGHT'
! !

"ASDBase.ic method 0x20018530; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
physIntervalLeftKey
    ^'PHYS.INTERVAL.LEFT'
! !

"ASDBase.ic method 0x2001ce38; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
typeNameKey
    ^'TYPE.NAME'
! !

"ASDBase.ic method 0x2001fab4; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
physIntervalRightKey
    ^'PHYS.INTERVAL.RIGHT'
! !

"ASDBase.ic method 0x20021ed8; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
typeMaxsizeKey
    ^'TYPE.MAXSIZE'
! !

"ASDBase.ic method 0x20023300; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
implTypeNameKey
    ^'IMPL.TYPE.NAME'
! !

"ASDBase.ic method 0x20023444; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
implZeroNotIncludedKey
    ^'IMPL.ZERONOTINCLUDED'
! !

"ASDBase.ic method 0x2002420c; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
typeBaseTypeNameKey
    ^'TYPE.BASETYPE.NAME'
! !

"ASDBase.ic method 0x20024920; bytecode file offset 0x92209c"
!SGCgBaseClassType class methodsFor: 'recovered'!
implIntervalLeftKey
    ^'IMPL.INTERVAL.LEFT'
! !

"ASDBase.ic method 0x2003c778; bytecode file offset 0x939180"
!SGCgBaseClassType class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgBaseClassType.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20104ae0; bytecode file offset 0xa01584"
!SGCgBaseClassType class methodsFor: 'recovered'!
typeKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) typeNameKey.
    recoveredValue2 := (self) typeBaseTypeNameKey.
    recoveredValue3 := (self) typeMaxsizeKey.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20314ce8; bytecode file offset 0xc115e4"
!SGCgBaseClassType class methodsFor: 'recovered'!
createCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createCopy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) originalImplementationIsNil.
    (recoveredValue2) originalImplementationIsNil: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getImplType.
    (recoveredValue5) setImplType: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) getImplInterval.
    (recoveredValue8) setImplInterval: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) formula.
    (recoveredValue11) formula: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) getPhysInterval.
    (recoveredValue14) setPhysInterval: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) getPhysQuantization.
    (recoveredValue17) setPhysQuantization: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) referencedImplTypeName.
    (recoveredValue20) referencedImplTypeName: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) extraImplInfo.
    (recoveredValue23) extraImplInfo: (recoveredValue25).
    ^recoveredValue1
! !

