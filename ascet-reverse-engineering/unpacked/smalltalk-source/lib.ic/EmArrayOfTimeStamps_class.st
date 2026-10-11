"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20002c40; bytecode file offset 0x3ec60"
!EmArrayOfTimeStamps class methodsFor: 'recovered'!
tag
    ^81
! !

"lib.ic method 0x20006710; bytecode file offset 0x42744"
!EmArrayOfTimeStamps class methodsFor: 'recovered'!
createFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := EmTimeStamp.
    recoveredValue3 := (recoveredValue2) fixedLength.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := (self) new: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue5) createFor: (recoveredValue6) in: (recoveredValue7).
    ^recoveredValue8
! !

