"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200228f8; bytecode file offset 0x92209c"
!ASAP2CcpQPBlob class methodsFor: 'recovered'!
members
    ^#('daqListNumber' 'daqListLength' 'canIdVariable' 'canIdFixed' 'raster' 'exclusive' 'reductionAllowed' 'firstPacketId')
! !

"ASDBase.ic method 0x2007433c; bytecode file offset 0x970de8"
!ASAP2CcpQPBlob class methodsFor: 'recovered'!
fixedSize
    ^8
! !

"ASDBase.ic method 0x204a410c; bytecode file offset 0xda0a34"
!ASAP2CcpQPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('LENGTH') put: ('getDaqListLength:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('CAN_ID_VARIABLE') put: ('getCanIdVariable:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('CAN_ID_FIXED') put: ('getCanIdFixed:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('RASTER') put: ('getRaster:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('EXCLUSIVE') put: ('getExclusive:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('REDUCTION_ALLOWED') put: ('getReductionAllowed:').
    (recoveredValue0) at: ('FIRST_PID') put: ('getFirstPacketId:').
    recoveredValue7 := (self) options.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('LENGTH') value: ('putIn:daqListLength:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('CAN_ID_VARIABLE') value: ('putIn:canIdVariable:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('CAN_ID_FIXED') value: ('putIn:canIdFixed:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('RASTER') value: ('putIn:raster:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue7.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('EXCLUSIVE') value: ('putIn:exclusive:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue7.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('REDUCTION_ALLOWED') value: ('putIn:reductionAllowed:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := Association.
    recoveredValue27 := (recoveredValue26) key: ('FIRST_PID') value: ('putIn:firstPacketId:').
    (recoveredValue7) add: (recoveredValue27).
    ^self
! !

