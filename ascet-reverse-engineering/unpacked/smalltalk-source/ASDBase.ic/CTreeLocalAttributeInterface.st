"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012c00; bytecode file offset 0x912098"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeFixedAttributeRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200181f4; bytecode file offset 0x92209c"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
defaultDataFilename
    ^'atribute'
! !

"ASDBase.ic method 0x200225bc; bytecode file offset 0x92209c"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
uniqueIndex
    ^'globalId'
! !

"ASDBase.ic method 0x200612bc; bytecode file offset 0x95e838"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
attributeSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('attributeSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bc01c; bytecode file offset 0x9b8ddc"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
attributeSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('attributeSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2025103c; bytecode file offset 0xb4da00"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
initializeAttributeNameIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('attributeName') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) attributeNameLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) attributeSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) attributeSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20289878; bytecode file offset 0xb86150"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
initializeGlobalIdIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('globalId') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) globalIdLength.
    recoveredValue7 := (self) recordClass.
    recoveredValue8 := (recoveredValue7) attributeNameLength.
    recoveredValue9 := (recoveredValue6) + (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) globalIdSeg.
    recoveredValue12 := (recoveredValue11) entries.
    recoveredValue13 := (self) globalIdSeg.
    recoveredValue14 := (recoveredValue4) create: (recoveredValue9) duplicates: (recoveredValue10) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue12) segments: (recoveredValue13).
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredLocal2.
    ^recoveredValue15
! !

"ASDBase.ic method 0x202c7b78; bytecode file offset 0xbc4454"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
initializeIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := CTIIdxArray.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    ctKey := recoveredValue3.
    recoveredValue4 := (self) initializeGlobalIdIndex.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := ctKey.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) indexAt: (0) put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := DBGlobalAttributeIdKey.
    (self) setUniqueIndex: (recoveredValue7) keyClass: (recoveredValue8).
    recoveredValue9 := (self) initializeAttributeNameIndex.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := ctKey.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) indexAt: (1) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := DBAttributeKey.
    (self) setUniqueIndex: (recoveredValue12) keyClass: (recoveredValue13).
    recoveredValue14 := ctKey.
    ^recoveredValue14
! !

"ASDBase.ic method 0x204dacdc; bytecode file offset 0xdd75f0"
!CTreeLocalAttributeInterface methodsFor: 'recovered'!
initializeSegments
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    ctSegments := recoveredValue3.
    recoveredValue4 := (self) recordClass.
    recoveredValue5 := (recoveredValue4) createDoDaIndices.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := CTISegArray.
    recoveredValue7 := (recoveredValue6) create: (4).
    (self) globalIdSeg: (recoveredValue7).
    recoveredValue8 := CTISeg.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: ('pcId').
    recoveredValue11 := (self) recordClass.
    recoveredValue12 := (recoveredValue11) pcIdLength.
    recoveredValue13 := Schseg.
    recoveredValue14 := (recoveredValue8) create: (recoveredValue10) length: (recoveredValue12) mode: (recoveredValue13).
    recoveredLocal5 := recoveredValue14.
    recoveredValue15 := CTISeg.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) at: ('tsThisVersion').
    recoveredValue18 := (self) recordClass.
    recoveredValue19 := (recoveredValue18) timeLength.
    recoveredValue20 := Schseg.
    recoveredValue21 := (recoveredValue15) create: (recoveredValue17) length: (recoveredValue19) mode: (recoveredValue20).
    recoveredLocal4 := recoveredValue21.
    recoveredValue22 := CTISeg.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) at: ('transactionId').
    recoveredValue25 := (self) recordClass.
    recoveredValue26 := (recoveredValue25) transactionIdLength.
    recoveredValue27 := Schseg.
    recoveredValue28 := (recoveredValue22) create: (recoveredValue24) length: (recoveredValue26) mode: (recoveredValue27).
    recoveredLocal3 := recoveredValue28.
    recoveredValue29 := CTISeg.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue30) at: ('attributeName').
    recoveredValue32 := (self) recordClass.
    recoveredValue33 := (recoveredValue32) attributeNameLength.
    recoveredValue34 := Schseg.
    recoveredValue35 := (recoveredValue29) create: (recoveredValue31) length: (recoveredValue33) mode: (recoveredValue34).
    recoveredLocal2 := recoveredValue35.
    recoveredValue36 := (self) globalIdSeg.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := recoveredLocal5.
    (recoveredValue37) segAt: (0) put: (recoveredValue38).
    recoveredValue39 := recoveredValue36.
    recoveredValue40 := recoveredLocal4.
    (recoveredValue39) segAt: (1) put: (recoveredValue40).
    recoveredValue41 := recoveredValue36.
    recoveredValue42 := recoveredLocal3.
    (recoveredValue41) segAt: (2) put: (recoveredValue42).
    recoveredValue43 := recoveredLocal2.
    (recoveredValue36) segAt: (3) put: (recoveredValue43).
    recoveredValue44 := CTISegArray.
    recoveredValue45 := (recoveredValue44) create: (1).
    (self) attributeSeg: (recoveredValue45).
    recoveredValue46 := CTISeg.
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := (recoveredValue47) at: ('attributeName').
    recoveredValue49 := (self) recordClass.
    recoveredValue50 := (recoveredValue49) attributeNameLength.
    recoveredValue51 := Schseg.
    recoveredValue52 := (recoveredValue46) create: (recoveredValue48) length: (recoveredValue50) mode: (recoveredValue51).
    recoveredLocal5 := recoveredValue52.
    recoveredValue53 := (self) attributeSeg.
    recoveredValue54 := recoveredLocal5.
    (recoveredValue53) segAt: (0) put: (recoveredValue54).
    ^self
! !

