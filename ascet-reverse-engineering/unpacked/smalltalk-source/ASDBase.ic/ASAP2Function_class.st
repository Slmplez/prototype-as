"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f6b8; bytecode file offset 0x92209c"
!ASAP2Function class methodsFor: 'recovered'!
keyWord
    ^'FUNCTION'
! !

"ASDBase.ic method 0x20026c2c; bytecode file offset 0x923928"
!ASAP2Function class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'annotation:' 'defCharacteristic:' 'refCharacteristic:' 'inMeasurement:' 'outMeasurement:' 'locMeasurement:' 'subFunction:' 'isSubFunction:')
! !

"ASDBase.ic method 0x20072934; bytecode file offset 0x96f1e8"
!ASAP2Function class methodsFor: 'recovered'!
emBehaviorId
    ^130
! !

"ASDBase.ic method 0x200b6b00; bytecode file offset 0x9b39ac"
!ASAP2Function class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('annotation' 'defCharacteristic' 'refCharacteristic' 'inMeasurement' 'outMeasurement' 'locMeasurement' 'subFunction' 'isSubFunction' 'functionVersion')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b76e0; bytecode file offset 0x9b3fac"
!ASAP2Function class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20239cb0; bytecode file offset 0xb36580"
!ASAP2Function class methodsFor: 'recovered'!
create: recoveredArg1 refCharacteristic: recoveredArg2 inMeasurement: recoveredArg3 outMeasurement: recoveredArg4 locMeasurement: recoveredArg5 subFunction: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) defCharacteristic: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) refCharacteristic: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) inMeasurement: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) locMeasurement: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg4.
    (recoveredValue10) outMeasurement: (recoveredValue11).
    recoveredValue12 := recoveredArg6.
    (recoveredValue1) subFunction: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x203bdff0; bytecode file offset 0xcba8e4"
!ASAP2Function class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := ASAP2BytesCharacteristic.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := ASAP2BytesAxisPoints.
    recoveredValue5 := (recoveredValue4) withAllSubclasses.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (self) allowedCollectionClasses.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := recoveredValue8.
    recoveredLocal2 := recoveredValue9.
    (recoveredValue1) at: ('defCharacteristic') put: (recoveredValue8).
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) at: ('refCharacteristic') put: (recoveredValue11).
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := ASAP2BytesMeasurement.
    recoveredValue14 := (recoveredValue13) withAllSubclasses.
    recoveredValue15 := (self) allowedCollectionClasses.
    recoveredValue16 := (recoveredValue14) , (recoveredValue15).
    recoveredValue17 := recoveredValue16.
    recoveredLocal1 := recoveredValue17.
    (recoveredValue12) at: ('inMeasurement') put: (recoveredValue16).
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue18) at: ('outMeasurement') put: (recoveredValue19).
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue20) at: ('locMeasurement') put: (recoveredValue21).
    recoveredValue22 := recoveredLocal3.
    recoveredValue23 := ASAP2Function.
    recoveredValue24 := (recoveredValue23) withAllSubclasses.
    recoveredValue25 := (self) allowedCollectionClasses.
    recoveredValue26 := (recoveredValue24) , (recoveredValue25).
    (recoveredValue22) at: ('subFunction') put: (recoveredValue26).
    recoveredValue27 := recoveredLocal3.
    ^recoveredValue27
! !

"ASDBase.ic method 0x204d16c0; bytecode file offset 0xdcdfec"
!ASAP2Function class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('DEF_CHARACTERISTIC') put: ('getDefCharacteristic:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('REF_CHARACTERISTIC') put: ('getRefCharacteristic:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('IN_MEASUREMENT') put: ('getInMeasurement:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('OUT_MEASUREMENT') put: ('getOutMeasurement:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('LOC_MEASUREMENT') put: ('getLocMeasurement:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('SUB_FUNCTION') put: ('getSubFunction:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('ANNOTATION') put: ('getAnnotation:').
    (recoveredValue0) at: ('FUNCTION_VERSION') put: ('getFunctionVersion:').
    recoveredValue8 := options.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('DEF_CHARACTERISTIC') value: ('putIn:defCharacteristic:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('REF_CHARACTERISTIC') value: ('putIn:refCharacteristic:').
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue8.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('IN_MEASUREMENT') value: ('putIn:inMeasurement:').
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue8.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('OUT_MEASUREMENT') value: ('putIn:outMeasurement:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue8.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('LOC_MEASUREMENT') value: ('putIn:locMeasurement:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue8.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('SUB_FUNCTION') value: ('putIn:subFunction:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue8.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('ANNOTATION') value: ('putIn:annotation:').
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('FUNCTION_VERSION') value: ('putIn:functionVersion:').
    (recoveredValue8) add: (recoveredValue31).
    ^self
! !

