"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001db28; bytecode file offset 0x92209c"
!FamosComponentPackInfo class methodsFor: 'recovered'!
keyWord
    ^'CP'
! !

"ASDBase.ic method 0x200b6d70; bytecode file offset 0x9b39ac"
!FamosComponentPackInfo class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('bufferReference' 'size' 'format' 'significantBytes' 'outMask' 'offset' 'sequenceCount' 'distanceToNext' 'accessObject')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20310fd8; bytecode file offset 0xc0d8c4"
!FamosComponentPackInfo class methodsFor: 'recovered'!
create: recoveredArg1 type: recoveredArg2 offset: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) bufferReference: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) format: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) dataAccessClasses.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue7) at: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) byteSize.
    (recoveredValue6) recordSize: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) significantBytes: (0).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) outMask: (0).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg3.
    (recoveredValue13) offset: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) sequenceCount: (1).
    (recoveredValue1) distanceToNext: (-1).
    recoveredValue16 := (self) indexReference.
    recoveredValue17 := recoveredLocal1.
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

