"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ad20; bytecode file offset 0x92209c"
!SGCgScope class methodsFor: 'recovered'!
importedScopeKey
    ^'importedScope'
! !

"ASDBase.ic method 0x2001b848; bytecode file offset 0x92209c"
!SGCgScope class methodsFor: 'recovered'!
exportedScopeKey
    ^'exportedScope'
! !

"ASDBase.ic method 0x2001cd90; bytecode file offset 0x92209c"
!SGCgScope class methodsFor: 'recovered'!
localScopeKey
    ^'localScope'
! !

"ASDBase.ic method 0x200fec7c; bytecode file offset 0x9fb570"
!SGCgScope class methodsFor: 'recovered'!
createExportedScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) exportedScopeKey.
    (recoveredValue1) category: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) component: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fec94; bytecode file offset 0x9fb570"
!SGCgScope class methodsFor: 'recovered'!
createLocalScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) localScopeKey.
    (recoveredValue1) category: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) component: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fecac; bytecode file offset 0x9fb570"
!SGCgScope class methodsFor: 'recovered'!
createImportedScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) importedScopeKey.
    (recoveredValue1) category: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) component: (recoveredValue4).
    ^recoveredValue0
! !

