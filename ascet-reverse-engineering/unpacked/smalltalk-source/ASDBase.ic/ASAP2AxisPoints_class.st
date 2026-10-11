"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018f74; bytecode file offset 0x92209c"
!ASAP2AxisPoints class methodsFor: 'recovered'!
keyWord
    ^'AXIS_PTS'
! !

"ASDBase.ic method 0x20080058; bytecode file offset 0x97c90c"
!ASAP2AxisPoints class methodsFor: 'recovered'!
emBehaviorId
    ^38
! !

"ASDBase.ic method 0x200b61d0; bytecode file offset 0x9b39ac"
!ASAP2AxisPoints class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('deposit:' 'input:' 'maxSize:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6e48; bytecode file offset 0x9b39ac"
!ASAP2AxisPoints class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('deposit' 'input' 'maxSize')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7688; bytecode file offset 0x9b3f54"
!ASAP2AxisPoints class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2eb8; bytecode file offset 0xaef814"
!ASAP2AxisPoints class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('DEPOSIT') put: ('getDeposit:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('DEPOSIT') value: ('putIn:deposit:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2038c23c; bytecode file offset 0xc88b28"
!ASAP2AxisPoints class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 address: recoveredArg3 input: recoveredArg4 recordLayout: recoveredArg5 maxDiff: recoveredArg6 compuMethod: recoveredArg7 maxSize: recoveredArg8 lowerBound: recoveredArg9 upperBound: recoveredArg10 deposit: recoveredArg11 byteOrder: recoveredArg12 functionList: recoveredArg13 ifData: recoveredArg14
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) address: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) input: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) recordLayout: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg6.
    (recoveredValue10) maxDiff: (recoveredValue11).
    recoveredValue12 := recoveredValue3.
    recoveredValue13 := recoveredArg7.
    (recoveredValue12) compuMethod: (recoveredValue13).
    recoveredValue14 := recoveredValue3.
    recoveredValue15 := recoveredArg8.
    (recoveredValue14) maxSize: (recoveredValue15).
    recoveredValue16 := recoveredValue3.
    recoveredValue17 := recoveredArg9.
    (recoveredValue16) lowerBound: (recoveredValue17).
    recoveredValue18 := recoveredValue3.
    recoveredValue19 := recoveredArg10.
    (recoveredValue18) upperBound: (recoveredValue19).
    recoveredValue20 := recoveredValue3.
    recoveredValue21 := recoveredArg11.
    (recoveredValue20) deposit: (recoveredValue21).
    recoveredValue22 := recoveredValue3.
    recoveredValue23 := recoveredArg12.
    (recoveredValue22) byteOrder: (recoveredValue23).
    recoveredValue24 := recoveredValue3.
    recoveredValue25 := recoveredArg13.
    (recoveredValue24) functionList: (recoveredValue25).
    recoveredValue26 := recoveredArg14.
    (recoveredValue3) ifData: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    (recoveredValue27) commit.
    recoveredValue28 := recoveredLocal1.
    ^recoveredValue28
! !

