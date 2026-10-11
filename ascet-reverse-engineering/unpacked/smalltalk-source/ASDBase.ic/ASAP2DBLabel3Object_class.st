"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b65f0; bytecode file offset 0x9b39ac"
!ASAP2DBLabel3Object class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('extendedLimits' 'recordLayout' 'memorySegment' 'guardRails' 'calibrationAccess')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7028; bytecode file offset 0x9b39ac"
!ASAP2DBLabel3Object class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('extendedLimits:' 'recordLayout:' 'memorySegment:' 'guardRails:' 'calibrationAccess:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7530; bytecode file offset 0x9b3e8c"
!ASAP2DBLabel3Object class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20359cb8; bytecode file offset 0xc56740"
!ASAP2DBLabel3Object class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('EXTENDED_LIMITS') put: ('getExtendedLimits:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('GUARD_RAILS') put: ('getGuardRails:').
    (recoveredValue0) at: ('CALIBRATION_ACCESS') put: ('getCalibrationAccess:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('EXTENDED_LIMITS') value: ('putIn:extendedLimits:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('GUARD_RAILS') value: ('putIn:guardRails:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('CALIBRATION_ACCESS') value: ('putIn:calibrationAccess:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

