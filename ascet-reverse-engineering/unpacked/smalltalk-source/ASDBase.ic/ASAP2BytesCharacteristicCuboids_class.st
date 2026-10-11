"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015dd0; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicCuboids class methodsFor: 'recovered'!
subType
    ^'Cuboid'
! !

"ASDBase.ic method 0x20090f60; bytecode file offset 0x98d9dc"
!ASAP2BytesCharacteristicCuboids class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6158; bytecode file offset 0x9b39ac"
!ASAP2BytesCharacteristicCuboids class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('mapList:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6980; bytecode file offset 0x9b39ac"
!ASAP2BytesCharacteristicCuboids class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('mapList')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201d14fc; bytecode file offset 0xacddd4"
!ASAP2BytesCharacteristicCuboids class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := Array.
    recoveredValue3 := ASAP2BytesCharacteristicMap.
    recoveredValue4 := (self) allowedCollectionClasses.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue2) with: (recoveredValue5).
    (recoveredValue1) at: ('mapList') put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

