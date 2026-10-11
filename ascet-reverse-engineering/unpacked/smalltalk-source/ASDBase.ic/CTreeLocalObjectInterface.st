"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200125ac; bytecode file offset 0x912098"
!CTreeLocalObjectInterface methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeObjectRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f430; bytecode file offset 0x92209c"
!CTreeLocalObjectInterface methodsFor: 'recovered'!
defaultDataFilename
    ^'objects'
! !

"ASDBase.ic method 0x2020543c; bytecode file offset 0xb01d38"
!CTreeLocalObjectInterface methodsFor: 'recovered'!
initializeIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
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
    recoveredValue8 := DBGlobalIdKey.
    (self) setUniqueIndex: (recoveredValue7) keyClass: (recoveredValue8).
    recoveredValue9 := ctKey.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20413a14; bytecode file offset 0xd10318"
!CTreeLocalObjectInterface methodsFor: 'recovered'!
initializeSegments
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    ctSegments := recoveredValue3.
    recoveredValue4 := (self) recordClass.
    recoveredValue5 := (recoveredValue4) createDoDaIndices.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := CTISegArray.
    recoveredValue7 := (recoveredValue6) create: (3).
    (self) globalIdSeg: (recoveredValue7).
    recoveredValue8 := CTISeg.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: ('pcId').
    recoveredValue11 := (self) recordClass.
    recoveredValue12 := (recoveredValue11) pcIdLength.
    recoveredValue13 := Schseg.
    recoveredValue14 := (recoveredValue8) create: (recoveredValue10) length: (recoveredValue12) mode: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := CTISeg.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) at: ('tsThisVersion').
    recoveredValue18 := (self) recordClass.
    recoveredValue19 := (recoveredValue18) timeLength.
    recoveredValue20 := Schseg.
    recoveredValue21 := (recoveredValue15) create: (recoveredValue17) length: (recoveredValue19) mode: (recoveredValue20).
    recoveredLocal3 := recoveredValue21.
    recoveredValue22 := CTISeg.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) at: ('transactionId').
    recoveredValue25 := (self) recordClass.
    recoveredValue26 := (recoveredValue25) transactionIdLength.
    recoveredValue27 := Schseg.
    recoveredValue28 := (recoveredValue22) create: (recoveredValue24) length: (recoveredValue26) mode: (recoveredValue27).
    recoveredLocal2 := recoveredValue28.
    recoveredValue29 := (self) globalIdSeg.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := recoveredLocal4.
    (recoveredValue30) segAt: (0) put: (recoveredValue31).
    recoveredValue32 := recoveredValue29.
    recoveredValue33 := recoveredLocal3.
    (recoveredValue32) segAt: (1) put: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue29) segAt: (2) put: (recoveredValue34).
    ^self
! !

