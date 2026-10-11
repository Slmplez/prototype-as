"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a804; bytecode file offset 0x92209c"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
keyWord
    ^'MEASUREMENT'
! !

"ASDBase.ic method 0x2001cf04; bytecode file offset 0x92209c"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
subType
    ^''
! !

"ASDBase.ic method 0x20080760; bytecode file offset 0x97d014"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
asap2BehaviorId
    ^195
! !

"ASDBase.ic method 0x200910f0; bytecode file offset 0x98d9dc"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
floatSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super floatSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6110; bytecode file offset 0x9b39ac"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('accuracy:' 'arraySize:' 'bitMask:' 'bitOperation:' 'dataType:' 'resolution:' 'virtual:' 'errorMask:' 'matrixDim:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b64b8; bytecode file offset 0x9b39ac"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('accuracy' 'virtual' 'memoryLayout' 'arraySize' 'bitMask' 'bitOperation' 'dataType' 'resolution' 'errorMask' 'matrixDim')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b73e8; bytecode file offset 0x9b3cb4"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b75c0; bytecode file offset 0x9b3e8c"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
bytesSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super bytesSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ec714; bytecode file offset 0xae8fe4"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesMeasurement.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('slew') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ASAP2BytesMeasurement.
    recoveredValue6 := (recoveredValue5) withAllSubclasses.
    (recoveredValue4) at: ('virtual') put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2027a168; bytecode file offset 0xb76a40"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
getCreateDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASAP2BytesMeasurement.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) keyWord.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value3) subType.
    recoveredBlock13Value5 := (recoveredBlock13Value2) , (recoveredBlock13Value4).
    recoveredBlock13Value6 := recoveredBlock13Arg1.
    recoveredBlock13Value7 := (recoveredBlock13Value0) at: (recoveredBlock13Value5) put: (recoveredBlock13Value6).
    recoveredBlock13Value7
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x204a1010; bytecode file offset 0xd9d930"
!ASAP2BytesMeasurement class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
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
    (recoveredValue6) at: ('MATRIX_DIM') put: ('getMatrixDim:').
    (recoveredValue0) at: ('SLEW') put: ('getSlew:').
    recoveredValue7 := options.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('ARRAY_SIZE') value: ('putIn:arraySize:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('BIT_OPERATION') value: ('putIn:bitOperation:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('ECU_ADDRESS') value: ('putIn:ecuAddress:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('VIRTUAL') value: ('putIn:virtual:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue7.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('ERROR_MASK') value: ('putIn:errorMask:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue7.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('SLEW') value: ('putIn:slew:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := Association.
    recoveredValue27 := (recoveredValue26) key: ('MATRIX_DIM') value: ('putIn:matrixDim:').
    (recoveredValue7) add: (recoveredValue27).
    ^self
! !

