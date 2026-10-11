"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201468d8; bytecode file offset 0xa431a4"
!SGAbstractCodeStorageManager class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) command: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) currentProjectCache.
    (recoveredValue4) currentProjectCache: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) setupCodeStorageVariantPath.
    ^recoveredValue1
! !

