"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200286f0; bytecode file offset 0x17bf94"
!OSScHandle class methodsFor: 'recovered'!
openSCManager: recoveredArg1 lpDatabaseName: recoveredArg2 dwDesiredAccess: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OpenSCManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) immediate: (recoveredValue6).
    ^recoveredValue7
! !

