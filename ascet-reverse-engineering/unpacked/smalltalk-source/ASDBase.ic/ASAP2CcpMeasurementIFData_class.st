"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200259d8; bytecode file offset 0x923928"
!ASAP2CcpMeasurementIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'paBlob:' 'kpBlob:' 'source:' 'tpBlob:' 'raster:' 'eventGroup:' 'seedKey:' 'checksumType:')
! !

"ASDBase.ic method 0x20026650; bytecode file offset 0x923928"
!ASAP2CcpMeasurementIFData class methodsFor: 'recovered'!
defaultName
    ^'ASAP1B_CCP'
! !

"ASDBase.ic method 0x2007fd90; bytecode file offset 0x97c644"
!ASAP2CcpMeasurementIFData class methodsFor: 'recovered'!
emBehaviorId
    ^159
! !

"ASDBase.ic method 0x200b68c0; bytecode file offset 0x9b39ac"
!ASAP2CcpMeasurementIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('source' 'tpBlob' 'raster' 'eventGroup' 'seedKey' 'checksumType')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b762c; bytecode file offset 0x9b3f08"
!ASAP2CcpMeasurementIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20469850; bytecode file offset 0xd6616c"
!ASAP2CcpMeasurementIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('SOURCE') put: ('getSource:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('TP_BLOB') put: ('getTpBlob:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('SEED_KEY') put: ('getSeedKey:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('RASTER') put: ('getRaster:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('EVENT_GROUP') put: ('getEventGroup:').
    (recoveredValue0) at: ('CHECKSUM') put: ('getChecksumType:').
    recoveredValue6 := (self) options.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('SOURCE') value: ('putIn:source:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue6.
    recoveredValue11 := Association.
    recoveredValue12 := (recoveredValue11) key: ('TP_BLOB') value: ('putIn:tpBlob:').
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue6.
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('SEED_KEY') value: ('putIn:seedKey:').
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    recoveredValue17 := Association.
    recoveredValue18 := (recoveredValue17) key: ('RASTER') value: ('putIn:raster:').
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue6.
    recoveredValue20 := Association.
    recoveredValue21 := (recoveredValue20) key: ('EVENT_GROUP') value: ('putIn:eventGroup:').
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('CHECKSUM') value: ('putIn:checksumType:').
    (recoveredValue6) add: (recoveredValue23).
    ^self
! !

