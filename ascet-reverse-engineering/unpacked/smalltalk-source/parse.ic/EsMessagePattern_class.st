"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x2000404c; bytecode file offset 0x196c4"
!EsMessagePattern class methodsFor: 'recovered'!
unarySelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EsUnaryPattern.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) selector: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) arguments: (#()).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) sourceStart.
    (recoveredValue5) sourceStart: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) sourceEnd.
    recoveredValue10 := (recoveredValue1) sourceEnd: (recoveredValue9).
    ^recoveredValue10
! !

"parse.ic method 0x200045d0; bytecode file offset 0x19c4c"
!EsMessagePattern class methodsFor: 'recovered'!
binarySelector: recoveredArg1 argument: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EsBinaryPattern.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) selector: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) with: (recoveredValue6).
    (recoveredValue4) arguments: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) sourceStart.
    (recoveredValue8) sourceStart: (recoveredValue10).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) sourceEnd.
    recoveredValue13 := (recoveredValue1) sourceEnd: (recoveredValue12).
    ^recoveredValue13
! !

"parse.ic method 0x20004810; bytecode file offset 0x19e8c"
!EsMessagePattern class methodsFor: 'recovered'!
keywordSelector: recoveredArg1 argument: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := EsKeywordPattern.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) with: (recoveredValue4).
    (recoveredValue2) selector: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue7) with: (recoveredValue8).
    (recoveredValue6) arguments: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) sourceStart.
    (recoveredValue10) sourceStart: (recoveredValue12).
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) sourceEnd.
    recoveredValue15 := (recoveredValue1) sourceEnd: (recoveredValue14).
    ^recoveredValue15
! !

