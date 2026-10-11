"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20008b58; bytecode file offset 0x44b94"
!BlockContextTemplate class methodsFor: 'recovered'!
emReadLiteralFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) readLiteral.
    (recoveredValue1) startPC: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) readLiteral.
    recoveredValue7 := EsBlockBindReceiver.
    recoveredValue8 := (recoveredValue7) bitInvert.
    recoveredValue9 := (recoveredValue6) bitAnd: (recoveredValue8).
    (recoveredValue4) argsAndTemps: (recoveredValue9).
    ^recoveredValue0
! !

