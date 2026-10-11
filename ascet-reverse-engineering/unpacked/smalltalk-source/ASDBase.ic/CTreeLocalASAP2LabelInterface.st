"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013cd4; bytecode file offset 0x912098"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeASAP2LabelObjectRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e86c; bytecode file offset 0x92209c"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
uniqueIndex
    ^'name'
! !

"ASDBase.ic method 0x20021dc4; bytecode file offset 0x92209c"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
defaultDataFilename
    ^'asap2labels'
! !

"ASDBase.ic method 0x20061460; bytecode file offset 0x95e838"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
completeNameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('completeNameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061b68; bytecode file offset 0x95e838"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
classNameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('classNameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061f78; bytecode file offset 0x95e838"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
nameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('nameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bbe78; bytecode file offset 0x9b8ddc"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
completeNameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('completeNameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc210; bytecode file offset 0x9b8ddc"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
classNameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('classNameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc468; bytecode file offset 0x9b8ddc"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
nameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('nameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20250f74; bytecode file offset 0xb4da00"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
initializeClassNameIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('className') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) classNameLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) classNameSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) classNameSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20250fc4; bytecode file offset 0xb4da00"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
initializeCompleteNameIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('completeName') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) completeNameLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) completeNameSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) completeNameSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20251104; bytecode file offset 0xb4da00"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
initializeNameIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('name') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) nameLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) nameSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) nameSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20286214; bytecode file offset 0xb82aec"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
initializeIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := CTIIdxArray.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    ctKey := recoveredValue3.
    recoveredValue4 := (self) initializeNameIndex.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := ctKey.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) indexAt: (0) put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := DBNameLabelKey.
    (self) setUniqueIndex: (recoveredValue7) keyClass: (recoveredValue8).
    recoveredValue9 := (self) initializeClassNameIndex.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := ctKey.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) indexAt: (1) put: (recoveredValue11).
    recoveredValue12 := ctKey.
    ^recoveredValue12
! !

"ASDBase.ic method 0x203d9f0c; bytecode file offset 0xcd6810"
!CTreeLocalASAP2LabelInterface methodsFor: 'recovered'!
initializeSegments
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    ctSegments := recoveredValue3.
    recoveredValue4 := (self) recordClass.
    recoveredValue5 := (recoveredValue4) createDoDaIndices.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := CTISegArray.
    recoveredValue7 := (recoveredValue6) create: (1).
    (self) nameSeg: (recoveredValue7).
    recoveredValue8 := CTISeg.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: ('name').
    recoveredValue11 := (self) recordClass.
    recoveredValue12 := (recoveredValue11) nameLength.
    recoveredValue13 := Schseg.
    recoveredValue14 := (recoveredValue8) create: (recoveredValue10) length: (recoveredValue12) mode: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := (self) nameSeg.
    recoveredValue16 := recoveredLocal4.
    (recoveredValue15) segAt: (0) put: (recoveredValue16).
    recoveredValue17 := CTISegArray.
    recoveredValue18 := (recoveredValue17) create: (1).
    (self) classNameSeg: (recoveredValue18).
    recoveredValue19 := CTISeg.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue20) at: ('className').
    recoveredValue22 := (self) recordClass.
    recoveredValue23 := (recoveredValue22) classNameLength.
    recoveredValue24 := Schseg.
    recoveredValue25 := (recoveredValue19) create: (recoveredValue21) length: (recoveredValue23) mode: (recoveredValue24).
    recoveredLocal4 := recoveredValue25.
    recoveredValue26 := (self) classNameSeg.
    recoveredValue27 := recoveredLocal4.
    (recoveredValue26) segAt: (0) put: (recoveredValue27).
    ^self
! !

