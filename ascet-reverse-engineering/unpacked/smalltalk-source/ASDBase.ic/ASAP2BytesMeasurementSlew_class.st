"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001efec; bytecode file offset 0x92209c"
!ASAP2BytesMeasurementSlew class methodsFor: 'recovered'!
subType
    ^'Slew'
! !

"ASDBase.ic method 0x2008097c; bytecode file offset 0x97d238"
!ASAP2BytesMeasurementSlew class methodsFor: 'recovered'!
asap2BehaviorId
    ^75
! !

"ASDBase.ic method 0x20090f80; bytecode file offset 0x98d9dc"
!ASAP2BytesMeasurementSlew class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b60e0; bytecode file offset 0x9b39ac"
!ASAP2BytesMeasurementSlew class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('slew:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6848; bytecode file offset 0x9b39ac"
!ASAP2BytesMeasurementSlew class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('slew')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20159b60; bytecode file offset 0xa5644c"
!ASAP2BytesMeasurementSlew class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2Group.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('slew') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

