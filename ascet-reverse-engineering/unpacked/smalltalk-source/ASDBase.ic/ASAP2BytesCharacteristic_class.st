"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200135d8; bytecode file offset 0x912098"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
TypeClasses
    | recoveredValue0 |
    recoveredValue0 := TypeClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017e1c; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
keyWord
    ^'CHARACTERISTIC'
! !

"ASDBase.ic method 0x20054668; bytecode file offset 0x951190"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
TypeClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TypeClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2008087c; bytecode file offset 0x97d158"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
asap2BehaviorId
    ^200
! !

"ASDBase.ic method 0x200b5f00; bytecode file offset 0x9b39ac"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('axisDescription' 'dependentCharacteristic' 'virtualCharacteristic' 'bitMask' 'number' 'type' 'comparisonQuantity')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b5fd8; bytecode file offset 0x9b39ac"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('axisDescription:' 'dependentCharacteristic:' 'virtualCharacteristic:' 'bitMask:' 'number:' 'type:' 'comparisonQuantity:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7338; bytecode file offset 0x9b3cb4"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201812bc; bytecode file offset 0xa7db8c"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
types
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d0194Arg1 | 
    | block280d0194Value0 block280d0194Value1 block280d0194Value2 |
    block280d0194Value0 := block280d0194Arg1.
    block280d0194Value1 := (block280d0194Value0) basicNew: (0).
    block280d0194Value2 := (block280d0194Value1) type.
    block280d0194Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20259e3c; bytecode file offset 0xb56718"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2DependentCharacteristic.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('dependentCharacteristic') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ASAP2VirtualCharacteristic.
    recoveredValue6 := (recoveredValue5) withAllSubclasses.
    (recoveredValue4) at: ('virtualCharacteristic') put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := ASAP2BytesMeasurement.
    recoveredValue9 := (recoveredValue8) withAllSubclasses.
    (recoveredValue7) at: ('comparisonQuantity') put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x202ee528; bytecode file offset 0xbeae04"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
getCreateDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASAP2BytesCharacteristic.
    recoveredValue3 := (recoveredValue2) allSubclasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) subType.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isEmpty.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 45] ifFalse: [recoveredBlock13PC := 30].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) keyWord.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) subType.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203bf110; bytecode file offset 0xcbba28"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
initializeTypeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) TypeClasses: (recoveredValue1).
    recoveredValue2 := (self) TypeClasses.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ASAP2Characteristic.
    (recoveredValue3) at: ('UNKNOWN') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ASAP2BytesCharacteristicAscii.
    (recoveredValue5) at: ('ASCII') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := ASAP2BytesCharacteristicCuboid.
    (recoveredValue7) at: ('CUBOID') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := ASAP2BytesCharacteristicMapList.
    (recoveredValue9) at: ('MAPLIST') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := ASAP2BytesCharacteristicCurve.
    (recoveredValue11) at: ('CURVE') put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := ASAP2BytesCharacteristicMap.
    (recoveredValue13) at: ('MAP') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := ASAP2BytesCharacteristicValblk.
    (recoveredValue15) at: ('VAL_BLK') put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := ASAP2BytesCharacteristicValue.
    (recoveredValue17) at: ('VALUE') put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := ASAP2BytesCharacteristicSlew.
    (recoveredValue19) at: ('SLEW_VALUE') put: (recoveredValue20).
    recoveredValue21 := ASAP2BytesCharacteristicCurveAxis.
    (recoveredValue2) at: ('CURVE_AXIS') put: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x204af898; bytecode file offset 0xdac1c0"
!ASAP2BytesCharacteristic class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('NUMBER') put: ('getNumberAttribut:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('AXIS_DESCR') put: ('getAxisDescription:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('DEPENDENT_CHARACTERISTIC') put: ('getDependentCharacteristic:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('VIRTUAL_CHARACTERISTIC') put: ('getVirtualCharacteristic:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('COMPARISON_QUANTITY') put: ('getComparisonQuantity:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('MATRIX_DIM') put: ('getMatrixDim:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('MAP_LIST') put: ('getMapList:').
    recoveredValue8 := (self) options.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('NUMBER') value: ('putIn:numberAttribut:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('AXIS_DESCR') value: ('putIn:axisDescription:').
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue8.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('DEPENDENT_CHARACTERISTIC') value: ('putIn:dependentCharacteristic:').
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue8.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('VIRTUAL_CHARACTERISTIC') value: ('putIn:virtualCharacteristic:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue8.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('COMPARISON_QUANTITY') value: ('putIn:comparisonQuantity:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue8.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('MATRIX_DIM') value: ('putIn:matrixDim:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue8.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('MAP_LIST') value: ('putIn:mapList:').
    (recoveredValue27) add: (recoveredValue29).
    ^self
! !

