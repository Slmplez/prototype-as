"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016e98; bytecode file offset 0x92209c"
!ASAP2DVCharacteristic class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'formula:' 'characteristic:')
! !

"ASDBase.ic method 0x200b6f68; bytecode file offset 0x9b39ac"
!ASAP2DVCharacteristic class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('formula' 'characteristic')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b727c; bytecode file offset 0x9b3b98"
!ASAP2DVCharacteristic class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20206850; bytecode file offset 0xb03128"
!ASAP2DVCharacteristic class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesCharacteristic.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := ASAP2BytesAxisPoints.
    recoveredValue5 := (recoveredValue4) withAllSubclasses.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (self) allowedCollectionClasses.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue1) at: ('characteristic') put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

