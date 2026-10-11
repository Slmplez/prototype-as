"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200173fc; bytecode file offset 0x92209c"
!ASAP2XYAxisPoints class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'position:' 'dataType:' 'indexOrder:' 'addressType:')
! !

"ASDBase.ic method 0x200254d8; bytecode file offset 0x92209c"
!ASAP2XYAxisPoints class methodsFor: 'recovered'!
keyWord
    ^'AXIS_PTS_'
! !

"ASDBase.ic method 0x200b5f18; bytecode file offset 0x9b39ac"
!ASAP2XYAxisPoints class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('position' 'dataType' 'indexOrder' 'addressType')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7444; bytecode file offset 0x9b3da0"
!ASAP2XYAxisPoints class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201de228; bytecode file offset 0xadaafc"
!ASAP2XYAxisPoints class methodsFor: 'recovered'!
createFileDefaults
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) dataType: ('FLOAT64_IEEE').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) position: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) indexOrder: ('INDEX_INCR').
    (recoveredValue1) addressType: ('DIRECT').
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201fbf0c; bytecode file offset 0xaf87d4"
!ASAP2XYAxisPoints class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 position: recoveredArg3 dataType: recoveredArg4 indexOrder: recoveredArg5 addressType: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) position: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) dataType: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) indexOrder: (recoveredValue9).
    recoveredValue10 := recoveredArg6.
    (recoveredValue3) addressType: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

