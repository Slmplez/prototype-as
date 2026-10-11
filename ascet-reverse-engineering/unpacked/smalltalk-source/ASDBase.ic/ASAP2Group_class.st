"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d54c; bytecode file offset 0x92209c"
!ASAP2Group class methodsFor: 'recovered'!
keyWord
    ^'GROUP'
! !

"ASDBase.ic method 0x200b6f08; bytecode file offset 0x9b39ac"
!ASAP2Group class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('annotation' 'root' 'refCharacteristic' 'refMeasurement' 'functionList' 'subGroup')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b760c; bytecode file offset 0x9b3f08"
!ASAP2Group class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2038a934; bytecode file offset 0xc87224"
!ASAP2Group class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesCharacteristic.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := ASAP2BytesAxisPoints.
    recoveredValue5 := (recoveredValue4) withAllSubclasses.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (self) allowedCollectionClasses.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue1) at: ('refCharacteristic') put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := ASAP2BytesMeasurement.
    recoveredValue11 := (recoveredValue10) withAllSubclasses.
    recoveredValue12 := (self) allowedCollectionClasses.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    (recoveredValue9) at: ('refMeasurement') put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := ASAP2Group.
    recoveredValue16 := (recoveredValue15) withAllSubclasses.
    recoveredValue17 := (self) allowedCollectionClasses.
    recoveredValue18 := (recoveredValue16) , (recoveredValue17).
    (recoveredValue14) at: ('subGroup') put: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := ASAP2Function.
    recoveredValue21 := (recoveredValue20) withAllSubclasses.
    recoveredValue22 := (self) allowedCollectionClasses.
    recoveredValue23 := (recoveredValue21) , (recoveredValue22).
    (recoveredValue19) at: ('functionList') put: (recoveredValue23).
    recoveredValue24 := recoveredLocal1.
    ^recoveredValue24
! !

"ASDBase.ic method 0x20465d80; bytecode file offset 0xd62694"
!ASAP2Group class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('REF_CHARACTERISTIC') put: ('getRefCharacteristic:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('REF_MEASUREMENT') put: ('getRefMeasurement:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('FUNCTION_LIST') put: ('getFunctionList:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('ANNOTATION') put: ('getAnnotation:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('SUB_GROUP') put: ('getSubGroup:').
    (recoveredValue0) at: ('ROOT') put: ('getRoot:').
    recoveredValue6 := options.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('REF_CHARACTERISTIC') value: ('putIn:refCharacteristic:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue6.
    recoveredValue11 := Association.
    recoveredValue12 := (recoveredValue11) key: ('REF_MEASUREMENT') value: ('putIn:refMeasurement:').
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue6.
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('FUNCTION_LIST') value: ('putIn:functionList:').
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    recoveredValue17 := Association.
    recoveredValue18 := (recoveredValue17) key: ('SUB_GROUP') value: ('putIn:subGroup:').
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue6.
    recoveredValue20 := Association.
    recoveredValue21 := (recoveredValue20) key: ('ROOT') value: ('putIn:root:').
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('ANNOTATION') value: ('putIn:annotation:').
    (recoveredValue6) add: (recoveredValue23).
    ^self
! !

