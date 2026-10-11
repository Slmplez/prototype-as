"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ba94; bytecode file offset 0x92209c"
!IntelHexLinearOffsetRecord class methodsFor: 'recovered'!
members
    ^#('segmentAddress')
! !

"ASDBase.ic method 0x20072d68; bytecode file offset 0x96f6d4"
!IntelHexLinearOffsetRecord class methodsFor: 'recovered'!
recordType
    ^4
! !

"ASDBase.ic method 0x200834c8; bytecode file offset 0x97fe64"
!IntelHexLinearOffsetRecord class methodsFor: 'recovered'!
segmentStartFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (4294901760).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083518; bytecode file offset 0x97fe64"
!IntelHexLinearOffsetRecord class methodsFor: 'recovered'!
offsetFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (65535).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dc690; bytecode file offset 0x9d8f4c"
!IntelHexLinearOffsetRecord class methodsFor: 'recovered'!
putAddress: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) >> (16).
    recoveredValue2 := recoveredArg2.
    (self) putHexWord: (recoveredValue1) on: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2022d690; bytecode file offset 0xb29f58"
!IntelHexLinearOffsetRecord class methodsFor: 'recovered'!
putChecksum: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) recordType.
    recoveredValue1 := (2) + (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) >> (24).
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) >> (16).
    recoveredValue7 := (recoveredValue6) bitAnd: (255).
    recoveredValue8 := (recoveredValue4) + (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg2.
    (self) putCheckSum: (recoveredValue9) on: (recoveredValue10).
    recoveredValue11 := recoveredArg2.
    (recoveredValue11) cr.
    ^self
! !

