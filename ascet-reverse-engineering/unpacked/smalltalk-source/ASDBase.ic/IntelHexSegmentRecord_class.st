"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015950; bytecode file offset 0x92209c"
!IntelHexSegmentRecord class methodsFor: 'recovered'!
members
    ^#('segmentAddress')
! !

"ASDBase.ic method 0x200790f4; bytecode file offset 0x9759d0"
!IntelHexSegmentRecord class methodsFor: 'recovered'!
fixedSize
    ^17
! !

"ASDBase.ic method 0x20083488; bytecode file offset 0x97fe64"
!IntelHexSegmentRecord class methodsFor: 'recovered'!
segmentStartFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (16711680).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083558; bytecode file offset 0x97fe64"
!IntelHexSegmentRecord class methodsFor: 'recovered'!
offsetFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (65535).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20134c54; bytecode file offset 0xa31514"
!IntelHexSegmentRecord class methodsFor: 'recovered'!
putAddress: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) >> (4).
    recoveredValue2 := (recoveredValue1) bitAnd: (4080).
    recoveredValue3 := recoveredArg2.
    (self) putHexWord: (recoveredValue2) on: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2025bd78; bytecode file offset 0xb58640"
!IntelHexSegmentRecord class methodsFor: 'recovered'!
putChecksum: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) recordType.
    recoveredValue1 := (2) + (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) >> (16).
    recoveredValue4 := (recoveredValue3) bitAnd: (255).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) >> (8).
    recoveredValue8 := (recoveredValue7) bitAnd: (255).
    recoveredValue9 := (recoveredValue5) + (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg2.
    (self) putCheckSum: (recoveredValue10) on: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    (recoveredValue12) cr.
    ^self
! !

