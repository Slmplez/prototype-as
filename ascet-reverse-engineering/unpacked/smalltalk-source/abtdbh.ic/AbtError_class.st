"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20001b68; bytecode file offset 0x1363c"
!AbtError class methodsFor: 'recovered'!
errorText: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) in: (nil) locus: (nil) rc: (0) errorText: (recoveredValue0).
    ^recoveredValue1
! !

"abtdbh.ic method 0x20002ebc; bytecode file offset 0x149a8"
!AbtError class methodsFor: 'recovered'!
in: recoveredArg1 locus: recoveredArg2 rc: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) origin: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) locus: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) rc: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := Dictionary.
    recoveredValue9 := (recoveredValue8) dateAndTimeNow.
    (recoveredValue7) dateAndTime: (recoveredValue9).
    ^recoveredValue0
! !

"abtdbh.ic method 0x2000321c; bytecode file offset 0x14d0c"
!AbtError class methodsFor: 'recovered'!
in: recoveredArg1 locus: recoveredArg2 rc: recoveredArg3 errorText: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) origin: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) locus: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) rc: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := Dictionary.
    recoveredValue9 := (recoveredValue8) dateAndTimeNow.
    (recoveredValue7) dateAndTime: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg4.
    (recoveredValue10) errorText: (recoveredValue11).
    ^recoveredValue0
! !

