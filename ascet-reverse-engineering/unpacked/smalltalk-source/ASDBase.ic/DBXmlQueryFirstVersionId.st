"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ebe90; bytecode file offset 0x9e875c"
!DBXmlQueryFirstVersionId methodsFor: 'recovered'!
initOn: recoveredArg1 firstVersionId: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    firstVersionId := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2016f180; bytecode file offset 0xa6ba40"
!DBXmlQueryFirstVersionId methodsFor: 'recovered'!
search
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := db.
    recoveredValue1 := (recoveredValue0) objects.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) firstVersionId.
    recoveredBlock7Value2 := firstVersionId.
    recoveredBlock7Value3 := (recoveredBlock7Value1) = (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

