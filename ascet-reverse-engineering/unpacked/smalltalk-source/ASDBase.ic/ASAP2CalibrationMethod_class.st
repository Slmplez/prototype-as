"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ef74; bytecode file offset 0x92209c"
!ASAP2CalibrationMethod class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'method:' 'version:' 'ifData:' 'calibrationHandle:')
! !

"ASDBase.ic method 0x20021290; bytecode file offset 0x92209c"
!ASAP2CalibrationMethod class methodsFor: 'recovered'!
keyWord
    ^'CALIBRATION_METHOD'
! !

"ASDBase.ic method 0x20080414; bytecode file offset 0x97ccc8"
!ASAP2CalibrationMethod class methodsFor: 'recovered'!
emBehaviorId
    ^184
! !

"ASDBase.ic method 0x200b64a0; bytecode file offset 0x9b39ac"
!ASAP2CalibrationMethod class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('method' 'version' 'ifData' 'calibrationHandle')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7484; bytecode file offset 0x9b3da0"
!ASAP2CalibrationMethod class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202c4b5c; bytecode file offset 0xbc1520"
!ASAP2CalibrationMethod class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('IF_DATA') put: ('getIfData:').
    (recoveredValue0) at: ('CALIBRATION_HANDLE') put: ('getCalibrationHandle:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('IF_DATA') value: ('putIn:ifData:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('CALIBRATION_HANDLE') value: ('putIn:calibrationHandle:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

