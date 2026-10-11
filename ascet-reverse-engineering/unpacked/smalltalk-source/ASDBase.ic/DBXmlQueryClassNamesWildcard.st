"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008a1ec; bytecode file offset 0x986aa4"
!DBXmlQueryClassNamesWildcard methodsFor: 'recovered'!
search
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := db.
    recoveredValue1 := patterns.
    recoveredValue2 := (recoveredValue0) objectsForClasses: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ebe60; bytecode file offset 0x9e875c"
!DBXmlQueryClassNamesWildcard methodsFor: 'recovered'!
initOn: recoveredArg1 patterns: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    patterns := recoveredValue1.
    ^self
! !

