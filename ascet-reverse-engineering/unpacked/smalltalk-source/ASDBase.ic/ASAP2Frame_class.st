"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f514; bytecode file offset 0x92209c"
!ASAP2Frame class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dbObject:' 'ifData:' 'frameMeasurement:' 'rate:' 'scalingUnit:')
! !

"ASDBase.ic method 0x200215b4; bytecode file offset 0x92209c"
!ASAP2Frame class methodsFor: 'recovered'!
keyWord
    ^'FRAME'
! !

"ASDBase.ic method 0x2003c500; bytecode file offset 0x938dbc"
!ASAP2Frame class methodsFor: 'recovered'!
createWithscalingUnit: recoveredArg1 rate: recoveredArg2 frameMeasurement: recoveredArg3 qpBlob: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007ff50; bytecode file offset 0x97c804"
!ASAP2Frame class methodsFor: 'recovered'!
emBehaviorId
    ^161
! !

"ASDBase.ic method 0x2008bf58; bytecode file offset 0x988814"
!ASAP2Frame class methodsFor: 'recovered'!
labelId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) emBehaviorId.
    recoveredValue1 := (41216) + (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6d40; bytecode file offset 0x9b39ac"
!ASAP2Frame class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('frameMeasurement' 'rate' 'scalingUnit')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7570; bytecode file offset 0x9b3e8c"
!ASAP2Frame class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201aaccc; bytecode file offset 0xaa75a0"
!ASAP2Frame class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesMeasurement.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := (self) allowedCollectionClasses.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue1) at: ('frameMeasurement') put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201f2e08; bytecode file offset 0xaef814"
!ASAP2Frame class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('FRAME_MEASUREMENT') put: ('getFrameMeasurement:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('FRAME_MEASUREMENT') value: ('putIn:frameMeasurement:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

