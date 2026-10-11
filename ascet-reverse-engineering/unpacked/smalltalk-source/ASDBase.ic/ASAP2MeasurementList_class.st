"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022820; bytecode file offset 0x92209c"
!ASAP2MeasurementList class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'list:')
! !

"ASDBase.ic method 0x20072e34; bytecode file offset 0x96f6e8"
!ASAP2MeasurementList class methodsFor: 'recovered'!
emBehaviorId
    ^132
! !

"ASDBase.ic method 0x20090e80; bytecode file offset 0x98d9dc"
!ASAP2MeasurementList class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6878; bytecode file offset 0x9b39ac"
!ASAP2MeasurementList class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('list')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cb180; bytecode file offset 0x9c7b3c"
!ASAP2MeasurementList class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) list: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

