"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014ad8; bytecode file offset 0x912098"
!ASAP2CanMeasurementIFData class methodsFor: 'recovered'!
kpBlobClass
    | recoveredValue0 |
    recoveredValue0 := ASAP2CanKPBlob.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016688; bytecode file offset 0x92209c"
!ASAP2CanMeasurementIFData class methodsFor: 'recovered'!
defaultName
    ^'ASAP1B_CAN'
! !

"ASDBase.ic method 0x200170fc; bytecode file offset 0x92209c"
!ASAP2CanMeasurementIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'paBlob:' 'kpBlob:' 'kpBlobPrim:')
! !

"ASDBase.ic method 0x20080458; bytecode file offset 0x97cd0c"
!ASAP2CanMeasurementIFData class methodsFor: 'recovered'!
emBehaviorId
    ^58
! !

"ASDBase.ic method 0x200b6368; bytecode file offset 0x9b39ac"
!ASAP2CanMeasurementIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('kpBlobPrim')).
    ^recoveredValue1
! !

