"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026d94; bytecode file offset 0x923928"
!ASAP2Distance class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'position:' 'dataType:')
! !

"ASDBase.ic method 0x200b67d0; bytecode file offset 0x9b39ac"
!ASAP2Distance class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('position' 'dataType')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b72bc; bytecode file offset 0x9b3b98"
!ASAP2Distance class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113f04; bytecode file offset 0xa1088c"
!ASAP2Distance class methodsFor: 'recovered'!
create: recoveredArg1 dataType: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) position: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) dataType: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

