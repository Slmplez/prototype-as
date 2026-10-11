"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20316e40; bytecode file offset 0xc13728"
!AMLPredefinedTypeName class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := super initializeKeyWords.
    recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) keyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('[') put: ('getArrayIndex:').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (']') put: ('endOfIndex:').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (';') put: ('endOfStatement:').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (')') put: ('endOfStatement:').
    (recoveredValue2) at: ('];') put: ('endOfStatement:').
    ^self
! !

