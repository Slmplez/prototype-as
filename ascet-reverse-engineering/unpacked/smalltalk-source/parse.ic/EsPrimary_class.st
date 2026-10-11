"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x2000068c; bytecode file offset 0x15d28"
!EsPrimary class methodsFor: 'recovered'!
contentsFromObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) contents: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20003ed4; bytecode file offset 0x1954c"
!EsPrimary class methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) value.
    (recoveredValue1) contents: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) sourceStart.
    (recoveredValue4) sourceStart: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) sourceEnd.
    (recoveredValue7) sourceEnd: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) comment.
    recoveredValue12 := (recoveredValue0) comment: (recoveredValue11).
    ^recoveredValue12
! !

