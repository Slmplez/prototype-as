"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20128718; bytecode file offset 0xa25044"
!AbtDecimalConverter methodsFor: 'recovered'!
numericParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtMiscSmalltalkParser.
    recoveredValue1 := (recoveredValue0) forDecimals.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := InputDecimalSep.
    (recoveredValue2) decimalSeparator: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := InputThousandsSep.
    (recoveredValue4) thousandsSeparator: (recoveredValue5).
    ^recoveredValue1
! !

