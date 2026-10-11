"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017f78; bytecode file offset 0x92209c"
!ASAP2RescaleAxisPoints class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'position:' 'dataType:' 'indexOrder:' 'addressType:' 'maxNumberRescalePairs:')
! !

"ASDBase.ic method 0x2001c268; bytecode file offset 0x92209c"
!ASAP2RescaleAxisPoints class methodsFor: 'recovered'!
keyWord
    ^'AXIS_RESCALE_'
! !

"ASDBase.ic method 0x20090fa0; bytecode file offset 0x98d9dc"
!ASAP2RescaleAxisPoints class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6a28; bytecode file offset 0x9b39ac"
!ASAP2RescaleAxisPoints class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('maxNumberRescalePairs')).
    ^recoveredValue1
! !

