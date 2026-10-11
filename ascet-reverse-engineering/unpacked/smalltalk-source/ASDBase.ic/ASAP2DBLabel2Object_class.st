"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b65c0; bytecode file offset 0x9b39ac"
!ASAP2DBLabel2Object class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('address' 'annotation' 'byteOrder' 'compuMethod' 'displayIdentifier' 'format' 'functionList' 'lowerBound' 'maxDiff' 'maxRefresh' 'readOnly' 'upperBound' 'refMemorySegment')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b70d0; bytecode file offset 0x9b39ac"
!ASAP2DBLabel2Object class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('address:' 'annotation:' 'byteOrder:' 'compuMethod:' 'displayIdentifier:' 'format:' 'functionList:' 'lowerBound:' 'maxDiff:' 'maxRefresh:' 'readOnly:' 'upperBound:' 'refMemorySegment:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b770c; bytecode file offset 0x9b3fe8"
!ASAP2DBLabel2Object class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (12).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20507ed4; bytecode file offset 0xe04814"
!ASAP2DBLabel2Object class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('READ_ONLY') put: ('getReadOnly:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('READ_WRITE') put: ('getReadOnlyNot:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('FORMAT') put: ('getFormat:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('BYTE_ORDER') put: ('getByteOrder:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('MAX_REFRESH') put: ('getMaxRefresh:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('FUNCTION_LIST') put: ('getFunctionList:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('BIT_MASK') put: ('getBitMask:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('DISPLAY_IDENTIFIER') put: ('getDisplayIdentifier:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('ANNOTATION') put: ('getAnnotation:').
    (recoveredValue0) at: ('REF_MEMORY_SEGMENT') put: ('getRefMemorySegment:').
    recoveredValue10 := options.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('READ_ONLY') value: ('putIn:readOnly:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue10.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('FORMAT') value: ('putIn:format:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('BYTE_ORDER') value: ('putIn:byteOrder:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue10.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('MAX_REFRESH') value: ('putIn:maxRefresh:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue10.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('FUNCTION_LIST') value: ('putIn:functionList:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue10.
    recoveredValue27 := Association.
    recoveredValue28 := (recoveredValue27) key: ('BIT_MASK') value: ('putIn:bitMask:').
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue10.
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('DISPLAY_IDENTIFIER') value: ('putIn:displayIdentifier:').
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue10.
    recoveredValue33 := Association.
    recoveredValue34 := (recoveredValue33) key: ('ANNOTATION') value: ('putIn:annotation:').
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := Association.
    recoveredValue36 := (recoveredValue35) key: ('REF_MEMORY_SEGMENT') value: ('putIn:refMemorySegment:').
    (recoveredValue10) add: (recoveredValue36).
    ^self
! !

