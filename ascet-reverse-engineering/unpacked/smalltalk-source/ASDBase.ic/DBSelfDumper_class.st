"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2013044c; bytecode file offset 0xa2cd14"
!DBSelfDumper class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBMethodLinker.
    (recoveredValue0) initializeClass.
    recoveredValue1 := DBASAP2MethodLinker.
    (recoveredValue1) initializeClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super create: (recoveredValue2).
    ^recoveredValue3
! !

