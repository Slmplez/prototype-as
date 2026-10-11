"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200148bc; bytecode file offset 0x912098"
!ASAP2Characteristic class methodsFor: 'recovered'!
TypeClasses
    | recoveredValue0 |
    recoveredValue0 := TypeClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001beb4; bytecode file offset 0x92209c"
!ASAP2Characteristic class methodsFor: 'recovered'!
keyWord
    ^'CHARACTERISTIC'
! !

"ASDBase.ic method 0x20054770; bytecode file offset 0x951190"
!ASAP2Characteristic class methodsFor: 'recovered'!
TypeClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TypeClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20080088; bytecode file offset 0x97c93c"
!ASAP2Characteristic class methodsFor: 'recovered'!
emBehaviorId
    ^39
! !

"ASDBase.ic method 0x200b315c; bytecode file offset 0x9afa14"
!ASAP2Characteristic class methodsFor: 'recovered'!
labelId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) emBehaviorId.
    recoveredValue1 := (9984) + (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b61a0; bytecode file offset 0x9b39ac"
!ASAP2Characteristic class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('axisDescription:' 'dependentCharacteristic:' 'virtualCharacteristic:' 'bitMask:' 'number:' 'type:' 'comparisonQuantity:' 'slew:' 'matrixDim:' 'mapList:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6c80; bytecode file offset 0x9b39ac"
!ASAP2Characteristic class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('axisDescription' 'dependentCharacteristic' 'virtualCharacteristic' 'bitMask' 'number' 'type' 'comparisonQuantity' 'slew' 'matrixDim' 'mapList')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b771c; bytecode file offset 0x9b3fe8"
!ASAP2Characteristic class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (12).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203e2078; bytecode file offset 0xcde970"
!ASAP2Characteristic class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 type: recoveredArg3 address: recoveredArg4 recordLayout: recoveredArg5 maxDiff: recoveredArg6 compuMethod: recoveredArg7 lowerBound: recoveredArg8 upperBound: recoveredArg9 byteOrder: recoveredArg10 bitMask: recoveredArg11 functionList: recoveredArg12 number: recoveredArg13 extendedLimits: recoveredArg14 readOnly: recoveredArg15 ifData: recoveredArg16 axisDescription: recoveredArg17
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) type: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) address: (recoveredValue7).
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
    (recoveredValue14) lowerBound: (recoveredValue15).
    recoveredValue16 := recoveredValue3.
    recoveredValue17 := recoveredArg9.
    (recoveredValue16) upperBound: (recoveredValue17).
    recoveredValue18 := recoveredValue3.
    recoveredValue19 := recoveredArg10.
    (recoveredValue18) byteOrder: (recoveredValue19).
    recoveredValue20 := recoveredValue3.
    recoveredValue21 := recoveredArg11.
    (recoveredValue20) bitMask: (recoveredValue21).
    recoveredValue22 := recoveredValue3.
    recoveredValue23 := recoveredArg12.
    (recoveredValue22) functionList: (recoveredValue23).
    recoveredValue24 := recoveredValue3.
    recoveredValue25 := recoveredArg13.
    (recoveredValue24) number: (recoveredValue25).
    recoveredValue26 := recoveredValue3.
    recoveredValue27 := recoveredArg14.
    (recoveredValue26) extendedLimits: (recoveredValue27).
    recoveredValue28 := recoveredValue3.
    recoveredValue29 := recoveredArg15.
    (recoveredValue28) readOnly: (recoveredValue29).
    recoveredValue30 := recoveredValue3.
    recoveredValue31 := recoveredArg16.
    (recoveredValue30) ifData: (recoveredValue31).
    recoveredValue32 := recoveredArg17.
    (recoveredValue3) axisDescription: (recoveredValue32).
    recoveredValue33 := recoveredLocal1.
    (recoveredValue33) commit.
    recoveredValue34 := recoveredLocal1.
    ^recoveredValue34
! !

"ASDBase.ic method 0x2052b070; bytecode file offset 0xe279e0"
!ASAP2Characteristic class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) TypeClasses: (recoveredValue1).
    recoveredValue2 := (self) TypeClasses.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ASAP2Characteristic.
    (recoveredValue3) at: ('UNKNOWN') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ASAP2CharacteristicAscii.
    (recoveredValue5) at: ('ASCII') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := ASAP2CharacteristicCuboid.
    (recoveredValue7) at: ('CUBOID') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := ASAP2CharacteristicCurve.
    (recoveredValue9) at: ('CURVE') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := ASAP2CharacteristicMap.
    (recoveredValue11) at: ('MAP') put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := ASAP2CharacteristicValblk.
    (recoveredValue13) at: ('VAL_BLK') put: (recoveredValue14).
    recoveredValue15 := ASAP2CharacteristicValue.
    (recoveredValue2) at: ('VALUE') put: (recoveredValue15).
    super initializeKeyWords.
    recoveredValue16 := (self) keyWords.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) at: ('NUMBER') put: ('getNumberAttribut:').
    recoveredValue18 := recoveredValue16.
    (recoveredValue18) at: ('AXIS_DESCR') put: ('getAxisDescription:').
    recoveredValue19 := recoveredValue16.
    (recoveredValue19) at: ('DEPENDENT_CHARACTERISTIC') put: ('getDependentCharacteristic:').
    recoveredValue20 := recoveredValue16.
    (recoveredValue20) at: ('VIRTUAL_CHARACTERISTIC') put: ('getVirtualCharacteristic:').
    recoveredValue21 := recoveredValue16.
    (recoveredValue21) at: ('COMPARISON_QUANTITY') put: ('getComparisonQuantity:').
    recoveredValue22 := recoveredValue16.
    (recoveredValue22) at: ('MATRIX_DIM') put: ('getMatrixDim:').
    recoveredValue23 := recoveredValue16.
    (recoveredValue23) at: ('MAP_LIST') put: ('getMapList:').
    recoveredValue24 := (self) options.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := Association.
    recoveredValue27 := (recoveredValue26) key: ('NUMBER') value: ('putIn:numberAttribut:').
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue24.
    recoveredValue29 := Association.
    recoveredValue30 := (recoveredValue29) key: ('AXIS_DESCR') value: ('putIn:axisDescription:').
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue24.
    recoveredValue32 := Association.
    recoveredValue33 := (recoveredValue32) key: ('DEPENDENT_CHARACTERISTIC') value: ('putIn:dependentCharacteristic:').
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := recoveredValue24.
    recoveredValue35 := Association.
    recoveredValue36 := (recoveredValue35) key: ('VIRTUAL_CHARACTERISTIC') value: ('putIn:virtualCharacteristic:').
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := recoveredValue24.
    recoveredValue38 := Association.
    recoveredValue39 := (recoveredValue38) key: ('COMPARISON_QUANTITY') value: ('putIn:comparisonQuantity:').
    (recoveredValue37) add: (recoveredValue39).
    recoveredValue40 := recoveredValue24.
    recoveredValue41 := Association.
    recoveredValue42 := (recoveredValue41) key: ('MATRIX_DIM') value: ('putIn:matrixDim:').
    (recoveredValue40) add: (recoveredValue42).
    recoveredValue43 := recoveredValue24.
    recoveredValue44 := Association.
    recoveredValue45 := (recoveredValue44) key: ('MAP_LIST') value: ('putIn:mapList:').
    (recoveredValue43) add: (recoveredValue45).
    ^self
! !

