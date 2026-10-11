"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2010ece4; bytecode file offset 0xa0b5ac"
!SGAbstractHeaderFileStructureStrategy class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super create: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) globalHeaderFiles.
    recoveredValue5 := (recoveredValue4) asOrderedCollection.
    (recoveredValue2) globalHeaders: (recoveredValue5).
    ^recoveredValue1
! !

