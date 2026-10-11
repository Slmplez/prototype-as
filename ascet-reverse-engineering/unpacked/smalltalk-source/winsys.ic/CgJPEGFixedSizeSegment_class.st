"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000b204; bytecode file offset 0x873dc"
!CgJPEGFixedSizeSegment class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (self) reference: (recoveredValue2).
    recoveredValue4 := (self) signature.
    recoveredValue5 := (recoveredValue3) segmentMarker: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x20013304; bytecode file offset 0x8f4d8"
!CgJPEGFixedSizeSegment class methodsFor: 'recovered'!
fromStream: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) fixedSize.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := ByteArray.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue4) read: (recoveredValue5) startingAt: (1) nbyte: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) reference: (recoveredValue7).
    ^recoveredValue8
! !

