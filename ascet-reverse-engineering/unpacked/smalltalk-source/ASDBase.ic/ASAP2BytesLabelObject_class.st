"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013fb0; bytecode file offset 0x912098"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
AccessorClasses
    | recoveredValue0 |
    recoveredValue0 := AccessorClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200185b4; bytecode file offset 0x92209c"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
members
    ^#('bytes' 'floats' 'name' 'compuMethod' 'functionList' 'maxRefresh' 'comments' 'refMemorySegment' 'maxDiff' 'format' 'address' 'byteOrder' 'lowerBound' 'readOnly' 'upperBound' 'guardRails' 'calibrationAccess')
! !

"ASDBase.ic method 0x2001b6a4; bytecode file offset 0x92209c"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
setMembers
    ^#('bytes:' 'floats:' 'name:' 'compuMethod:' 'functionList:' 'maxRefresh:' 'comments:' 'refMemorySegment:' 'maxDiff:' 'format:' 'address:' 'byteOrder:' 'lowerBound:' 'readOnly:' 'upperBound:' 'guardRails:' 'calibrationAccess:')
! !

"ASDBase.ic method 0x20054614; bytecode file offset 0x951190"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
AccessorClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AccessorClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200634e0; bytecode file offset 0x95fd98"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
bytesSizeWithBitMask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bytesSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072a08; bytecode file offset 0x96f3cc"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
floatSize
    ^3
! !

"ASDBase.ic method 0x20074354; bytecode file offset 0x970de8"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
fixedSize
    ^8
! !

"ASDBase.ic method 0x20074484; bytecode file offset 0x970de8"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
bytesSize
    ^8
! !

"ASDBase.ic method 0x2022bbb4; bytecode file offset 0xb28490"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesCompuMethod.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('compuMethod') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ASAP2Function.
    recoveredValue6 := (recoveredValue5) withAllSubclasses.
    recoveredValue7 := (self) allowedCollectionClasses.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue4) at: ('functionList') put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2040bf94; bytecode file offset 0xd088b4"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
initializeClass
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DBU8Item.
    (recoveredValue3) at: ('BOOL') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := DBU8Item.
    (recoveredValue5) at: ('UBYTE') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := DBS8Item.
    (recoveredValue7) at: ('SBYTE') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := DBS16Item.
    (recoveredValue9) at: ('SWORD') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := DBU16Item.
    (recoveredValue11) at: ('UWORD') put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := DBU32Item.
    (recoveredValue13) at: ('ULONG') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := DBS32Item.
    (recoveredValue15) at: ('SLONG') put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := DBU64Item.
    (recoveredValue17) at: ('UINT64') put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := DBS64Item.
    (recoveredValue19) at: ('SINT64') put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := DBF4Item.
    (recoveredValue21) at: ('FLOAT32_IEEE') put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := DBF8Item.
    (recoveredValue23) at: ('FLOAT64_IEEE') put: (recoveredValue24).
    recoveredValue25 := DBF10Item.
    (recoveredValue2) at: ('FLOAT80_IEEE') put: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    (self) AccessorClasses: (recoveredValue26).
    ^self
! !

"ASDBase.ic method 0x20507d88; bytecode file offset 0xe046c8"
!ASAP2BytesLabelObject class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('IF_DATA') put: ('getIfData:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('READ_ONLY') put: ('getReadOnly:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('READ_WRITE') put: ('getReadOnlyNot:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('FORMAT') put: ('getFormat:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('BYTE_ORDER') put: ('getByteOrder:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('MAX_REFRESH') put: ('getMaxRefresh:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('FUNCTION_LIST') put: ('getFunctionList:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('BIT_MASK') put: ('getBitMask:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('DISPLAY_IDENTIFIER') put: ('getDisplayIdentifier:').
    (recoveredValue0) at: ('ANNOTATION') put: ('getAnnotation:').
    recoveredValue10 := options.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('IF_DATA') value: ('putIn:ifData:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue10.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('READ_ONLY') value: ('putIn:readOnly:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('FORMAT') value: ('putIn:format:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue10.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('BYTE_ORDER') value: ('putIn:byteOrder:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue10.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('MAX_REFRESH') value: ('putIn:maxRefresh:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue10.
    recoveredValue27 := Association.
    recoveredValue28 := (recoveredValue27) key: ('FUNCTION_LIST') value: ('putIn:functionList:').
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue10.
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('BIT_MASK') value: ('putIn:bitMask:').
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue10.
    recoveredValue33 := Association.
    recoveredValue34 := (recoveredValue33) key: ('DISPLAY_IDENTIFIER') value: ('putIn:displayIdentifier:').
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := Association.
    recoveredValue36 := (recoveredValue35) key: ('ANNOTATION') value: ('putIn:annotation:').
    (recoveredValue10) add: (recoveredValue36).
    ^self
! !

