"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007dd9c; bytecode file offset 0x97c330"
!ASDExternalFilesCodeContainerHandle class methodsFor: 'recovered'!
isAbstract
    ^false
! !

"ASDBase.ic method 0x20112124; bytecode file offset 0xa0e9e4"
!ASDExternalFilesCodeContainerHandle class methodsFor: 'recovered'!
createForPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 componentInfo: recoveredArg3 codeStorageManager: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super createForPrimaryKey: (recoveredValue0) secondaryKey: (recoveredValue1) componentInfo: (recoveredValue2) codeStorageManager: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) initializeFilesManager.
    ^recoveredValue4
! !

