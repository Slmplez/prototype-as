"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20003f48; bytecode file offset 0x3ff70"
!String class methodsFor: 'recovered'!
emReadLiteralFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) readString.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) markReadOnly: (true).
    ^recoveredValue1
! !

"lib.ic method 0x20008dbc; bytecode file offset 0x44dec"
!String class methodsFor: 'recovered'!
emReadBinary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Integer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) emReadInteger: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) new: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue5) next: (recoveredValue6) into: (recoveredValue7) startingAt: (1).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

