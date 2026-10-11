"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021590; bytecode file offset 0x92209c"
!ASAP2Measurement class methodsFor: 'recovered'!
keyWord
    ^'MEASUREMENT'
! !

"ASDBase.ic method 0x20080660; bytecode file offset 0x97cf3c"
!ASAP2Measurement class methodsFor: 'recovered'!
emBehaviorId
    ^64
! !

"ASDBase.ic method 0x2008bf48; bytecode file offset 0x988814"
!ASAP2Measurement class methodsFor: 'recovered'!
labelId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) emBehaviorId.
    recoveredValue1 := (16384) + (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6170; bytecode file offset 0x9b39ac"
!ASAP2Measurement class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('accuracy:' 'arraySize:' 'bitMask:' 'bitOperation:' 'dataType:' 'resolution:' 'virtual:' 'errorMask:' 'matrixDim:' 'slew:' 'layout:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6a40; bytecode file offset 0x9b39ac"
!ASAP2Measurement class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('accuracy' 'arraySize' 'bitMask' 'bitOperation' 'dataType' 'resolution' 'virtual' 'errorMask' 'matrixDim' 'slew' 'layout')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7748; bytecode file offset 0x9b4004"
!ASAP2Measurement class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (14).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203abe14; bytecode file offset 0xca8704"
!ASAP2Measurement class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 dataType: recoveredArg3 compuMethod: recoveredArg4 resolution: recoveredArg5 accuracy: recoveredArg6 lowerBound: recoveredArg7 upperBound: recoveredArg8 bitMask: recoveredArg9 byteOrder: recoveredArg10 format: recoveredArg11 maxRefresh: recoveredArg12 virtual: recoveredArg13 functionList: recoveredArg14 ifData: recoveredArg15
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) dataType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) compuMethod: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) resolution: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg6.
    (recoveredValue10) accuracy: (recoveredValue11).
    recoveredValue12 := recoveredValue3.
    recoveredValue13 := recoveredArg7.
    (recoveredValue12) lowerBound: (recoveredValue13).
    recoveredValue14 := recoveredValue3.
    recoveredValue15 := recoveredArg8.
    (recoveredValue14) upperBound: (recoveredValue15).
    recoveredValue16 := recoveredValue3.
    recoveredValue17 := recoveredArg9.
    (recoveredValue16) bitMask: (recoveredValue17).
    recoveredValue18 := recoveredValue3.
    recoveredValue19 := recoveredArg10.
    (recoveredValue18) byteOrder: (recoveredValue19).
    recoveredValue20 := recoveredValue3.
    recoveredValue21 := recoveredArg11.
    (recoveredValue20) format: (recoveredValue21).
    recoveredValue22 := recoveredValue3.
    recoveredValue23 := recoveredArg12.
    (recoveredValue22) maxRefresh: (recoveredValue23).
    recoveredValue24 := recoveredValue3.
    recoveredValue25 := recoveredArg13.
    (recoveredValue24) virtual: (recoveredValue25).
    recoveredValue26 := recoveredValue3.
    recoveredValue27 := recoveredArg15.
    (recoveredValue26) ifData: (recoveredValue27).
    recoveredValue28 := recoveredArg14.
    (recoveredValue3) addFunctions: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    (recoveredValue29) commit.
    recoveredValue30 := recoveredLocal1.
    ^recoveredValue30
! !

"ASDBase.ic method 0x204d17dc; bytecode file offset 0xdce108"
!ASAP2Measurement class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ARRAY_SIZE') put: ('getArraySize:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('BIT_OPERATION') put: ('getBitOperation:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('ECU_ADDRESS') put: ('getEcuAddress:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('VIRTUAL') put: ('getVirtual:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('ERROR_MASK') put: ('getErrorMask:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('LAYOUT') put: ('getLayout:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('MATRIX_DIM') put: ('getMatrixDim:').
    (recoveredValue0) at: ('SLEW') put: ('getSlew:').
    recoveredValue8 := options.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('ARRAY_SIZE') value: ('putIn:arraySize:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('BIT_OPERATION') value: ('putIn:bitOperation:').
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue8.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('ECU_ADDRESS') value: ('putIn:ecuAddress:').
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue8.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('VIRTUAL') value: ('putIn:virtual:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue8.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('ERROR_MASK') value: ('putIn:errorMask:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue8.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('SLEW') value: ('putIn:slew:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue8.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('LAYOUT') value: ('putIn:layout:').
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('MATRIX_DIM') value: ('putIn:matrixDim:').
    (recoveredValue8) add: (recoveredValue31).
    ^self
! !

