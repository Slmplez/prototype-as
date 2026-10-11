"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200018a4; bytecode file offset 0x3d8cc"
!Symbol class methodsFor: 'recovered'!
emReadLiteralFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) readString.
    recoveredValue2 := (recoveredValue1) asSymbol.
    ^recoveredValue2
! !

"lib.ic method 0x2000a0cc; bytecode file offset 0x46104"
!Symbol class methodsFor: 'recovered'!
emReadBinary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Integer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) emReadInteger: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := String.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue6) next: (recoveredValue7) into: (recoveredValue8) startingAt: (1).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) asSymbol.
    ^recoveredValue10
! !

