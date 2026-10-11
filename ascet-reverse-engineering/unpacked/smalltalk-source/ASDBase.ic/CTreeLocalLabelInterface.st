"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014ff4; bytecode file offset 0x912098"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeLabelObjectRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021530; bytecode file offset 0x92209c"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
defaultDataFilename
    ^'labels'
! !

"ASDBase.ic method 0x20025990; bytecode file offset 0x923928"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
uniqueIndex
    ^'completeNameFunction'
! !

"ASDBase.ic method 0x20061294; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
completeNameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('completeNameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200614d8; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
classNameFunctionSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('classNameFunctionSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200614ec; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
completeNameFunctionSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('completeNameFunctionSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200619ec; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
nameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('nameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061ac8; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
extNameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('extNameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061b40; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
classNameSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('classNameSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061e10; bytecode file offset 0x95e838"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
functionSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('functionSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bbe64; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
completeNameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('completeNameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc0bc; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
extNameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('extNameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc120; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
classNameFunctionSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('classNameFunctionSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc1fc; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
classNameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('classNameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc364; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
functionSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('functionSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc440; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
nameSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('nameSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc4b8; bytecode file offset 0x9b8ddc"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
completeNameFunctionSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('completeNameFunctionSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20250f24; bytecode file offset 0xb4da00"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20250f9c; bytecode file offset 0xb4da00"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20251014; bytecode file offset 0xb4da00"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
initializeFunctionIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('function') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) functionLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) functionSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) functionSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20251064; bytecode file offset 0xb4da00"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
initializeCompleteNameFunctionIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('completeNameFunction') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) completeNameFunctionLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) completeNameFunctionSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) completeNameFunctionSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202510b4; bytecode file offset 0xb4da00"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2028984c; bytecode file offset 0xb86150"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
initializeClassNameFunctionIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('classNameFunction') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) classNameLength.
    recoveredValue7 := (self) recordClass.
    recoveredValue8 := (recoveredValue7) functionLength.
    recoveredValue9 := (recoveredValue6) + (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) classNameFunctionSeg.
    recoveredValue12 := (recoveredValue11) entries.
    recoveredValue13 := (self) classNameFunctionSeg.
    recoveredValue14 := (recoveredValue4) create: (recoveredValue9) duplicates: (recoveredValue10) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue12) segments: (recoveredValue13).
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredLocal2.
    ^recoveredValue15
! !

"ASDBase.ic method 0x203d6984; bytecode file offset 0xcd326c"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
initializeIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := CTIIdxArray.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    ctKey := recoveredValue3.
    recoveredValue4 := (self) initializeClassNameIndex.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := ctKey.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) indexAt: (0) put: (recoveredValue6).
    recoveredValue7 := (self) initializeNameIndex.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := ctKey.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) indexAt: (1) put: (recoveredValue9).
    recoveredValue10 := (self) initializeFunctionIndex.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := ctKey.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) indexAt: (2) put: (recoveredValue12).
    recoveredValue13 := (self) initializeCompleteNameIndex.
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := ctKey.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) indexAt: (3) put: (recoveredValue15).
    recoveredValue16 := (self) initializeClassNameFunctionIndex.
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := ctKey.
    recoveredValue18 := recoveredLocal1.
    (recoveredValue17) indexAt: (4) put: (recoveredValue18).
    recoveredValue19 := (self) initializeCompleteNameFunctionIndex.
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := ctKey.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue20) indexAt: (5) put: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := DBCompleteNameFunctionKey.
    (self) setUniqueIndex: (recoveredValue22) keyClass: (recoveredValue23).
    recoveredValue24 := ctKey.
    ^recoveredValue24
! !

"ASDBase.ic method 0x205cd838; bytecode file offset 0xeca174"
!CTreeLocalLabelInterface methodsFor: 'recovered'!
initializeSegments
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    ctSegments := recoveredValue3.
    recoveredValue4 := (self) recordClass.
    recoveredValue5 := (recoveredValue4) createDoDaIndices.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := CTISegArray.
    recoveredValue7 := (recoveredValue6) create: (2).
    (self) completeNameSeg: (recoveredValue7).
    recoveredValue8 := CTISeg.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: ('className').
    recoveredValue11 := (self) recordClass.
    recoveredValue12 := (recoveredValue11) classNameLength.
    recoveredValue13 := Schseg.
    recoveredValue14 := (recoveredValue8) create: (recoveredValue10) length: (recoveredValue12) mode: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := CTISeg.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) at: ('name').
    recoveredValue18 := (self) recordClass.
    recoveredValue19 := (recoveredValue18) nameLength.
    recoveredValue20 := Schseg.
    recoveredValue21 := (recoveredValue15) create: (recoveredValue17) length: (recoveredValue19) mode: (recoveredValue20).
    recoveredLocal3 := recoveredValue21.
    recoveredValue22 := (self) completeNameSeg.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal4.
    (recoveredValue23) segAt: (0) put: (recoveredValue24).
    recoveredValue25 := recoveredLocal3.
    (recoveredValue22) segAt: (1) put: (recoveredValue25).
    recoveredValue26 := CTISegArray.
    recoveredValue27 := (recoveredValue26) create: (2).
    (self) classNameFunctionSeg: (recoveredValue27).
    recoveredValue28 := CTISeg.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue29) at: ('className').
    recoveredValue31 := (self) recordClass.
    recoveredValue32 := (recoveredValue31) classNameLength.
    recoveredValue33 := Schseg.
    recoveredValue34 := (recoveredValue28) create: (recoveredValue30) length: (recoveredValue32) mode: (recoveredValue33).
    recoveredLocal4 := recoveredValue34.
    recoveredValue35 := CTISeg.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue36) at: ('function').
    recoveredValue38 := (self) recordClass.
    recoveredValue39 := (recoveredValue38) functionLength.
    recoveredValue40 := Schseg.
    recoveredValue41 := (recoveredValue35) create: (recoveredValue37) length: (recoveredValue39) mode: (recoveredValue40).
    recoveredLocal3 := recoveredValue41.
    recoveredValue42 := (self) classNameFunctionSeg.
    recoveredValue43 := recoveredValue42.
    recoveredValue44 := recoveredLocal4.
    (recoveredValue43) segAt: (0) put: (recoveredValue44).
    recoveredValue45 := recoveredLocal3.
    (recoveredValue42) segAt: (1) put: (recoveredValue45).
    recoveredValue46 := CTISegArray.
    recoveredValue47 := (recoveredValue46) create: (3).
    (self) completeNameFunctionSeg: (recoveredValue47).
    recoveredValue48 := CTISeg.
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue49) at: ('className').
    recoveredValue51 := (self) recordClass.
    recoveredValue52 := (recoveredValue51) classNameLength.
    recoveredValue53 := Schseg.
    recoveredValue54 := (recoveredValue48) create: (recoveredValue50) length: (recoveredValue52) mode: (recoveredValue53).
    recoveredLocal4 := recoveredValue54.
    recoveredValue55 := CTISeg.
    recoveredValue56 := recoveredLocal1.
    recoveredValue57 := (recoveredValue56) at: ('name').
    recoveredValue58 := (self) recordClass.
    recoveredValue59 := (recoveredValue58) nameLength.
    recoveredValue60 := Schseg.
    recoveredValue61 := (recoveredValue55) create: (recoveredValue57) length: (recoveredValue59) mode: (recoveredValue60).
    recoveredLocal3 := recoveredValue61.
    recoveredValue62 := CTISeg.
    recoveredValue63 := recoveredLocal1.
    recoveredValue64 := (recoveredValue63) at: ('function').
    recoveredValue65 := (self) recordClass.
    recoveredValue66 := (recoveredValue65) functionLength.
    recoveredValue67 := Schseg.
    recoveredValue68 := (recoveredValue62) create: (recoveredValue64) length: (recoveredValue66) mode: (recoveredValue67).
    recoveredLocal2 := recoveredValue68.
    recoveredValue69 := (self) completeNameFunctionSeg.
    recoveredValue70 := recoveredValue69.
    recoveredValue71 := recoveredLocal4.
    (recoveredValue70) segAt: (0) put: (recoveredValue71).
    recoveredValue72 := recoveredValue69.
    recoveredValue73 := recoveredLocal3.
    (recoveredValue72) segAt: (1) put: (recoveredValue73).
    recoveredValue74 := recoveredLocal2.
    (recoveredValue69) segAt: (2) put: (recoveredValue74).
    recoveredValue75 := CTISegArray.
    recoveredValue76 := (recoveredValue75) create: (1).
    (self) classNameSeg: (recoveredValue76).
    recoveredValue77 := CTISeg.
    recoveredValue78 := recoveredLocal1.
    recoveredValue79 := (recoveredValue78) at: ('className').
    recoveredValue80 := (self) recordClass.
    recoveredValue81 := (recoveredValue80) classNameLength.
    recoveredValue82 := Schseg.
    recoveredValue83 := (recoveredValue77) create: (recoveredValue79) length: (recoveredValue81) mode: (recoveredValue82).
    recoveredLocal4 := recoveredValue83.
    recoveredValue84 := (self) classNameSeg.
    recoveredValue85 := recoveredLocal4.
    (recoveredValue84) segAt: (0) put: (recoveredValue85).
    recoveredValue86 := CTISegArray.
    recoveredValue87 := (recoveredValue86) create: (1).
    (self) nameSeg: (recoveredValue87).
    recoveredValue88 := CTISeg.
    recoveredValue89 := recoveredLocal1.
    recoveredValue90 := (recoveredValue89) at: ('name').
    recoveredValue91 := (self) recordClass.
    recoveredValue92 := (recoveredValue91) nameLength.
    recoveredValue93 := Schseg.
    recoveredValue94 := (recoveredValue88) create: (recoveredValue90) length: (recoveredValue92) mode: (recoveredValue93).
    recoveredLocal4 := recoveredValue94.
    recoveredValue95 := (self) nameSeg.
    recoveredValue96 := recoveredLocal4.
    (recoveredValue95) segAt: (0) put: (recoveredValue96).
    recoveredValue97 := CTISegArray.
    recoveredValue98 := (recoveredValue97) create: (1).
    (self) functionSeg: (recoveredValue98).
    recoveredValue99 := CTISeg.
    recoveredValue100 := recoveredLocal1.
    recoveredValue101 := (recoveredValue100) at: ('function').
    recoveredValue102 := (self) recordClass.
    recoveredValue103 := (recoveredValue102) functionLength.
    recoveredValue104 := Schseg.
    recoveredValue105 := (recoveredValue99) create: (recoveredValue101) length: (recoveredValue103) mode: (recoveredValue104).
    recoveredLocal4 := recoveredValue105.
    recoveredValue106 := (self) functionSeg.
    recoveredValue107 := recoveredLocal4.
    (recoveredValue106) segAt: (0) put: (recoveredValue107).
    recoveredValue108 := CTISegArray.
    recoveredValue109 := (recoveredValue108) create: (1).
    (self) globalIdSeg: (recoveredValue109).
    recoveredValue110 := CTISeg.
    recoveredValue111 := recoveredLocal1.
    recoveredValue112 := (recoveredValue111) at: ('globalId').
    recoveredValue113 := (self) recordClass.
    recoveredValue114 := (recoveredValue113) globalIdLength.
    recoveredValue115 := Schseg.
    recoveredValue116 := (recoveredValue110) create: (recoveredValue112) length: (recoveredValue114) mode: (recoveredValue115).
    recoveredLocal4 := recoveredValue116.
    recoveredValue117 := (self) globalIdSeg.
    recoveredValue118 := recoveredLocal4.
    (recoveredValue117) segAt: (0) put: (recoveredValue118).
    ^self
! !

