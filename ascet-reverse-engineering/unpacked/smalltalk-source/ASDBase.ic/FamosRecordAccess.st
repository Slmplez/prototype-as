"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008ab2c; bytecode file offset 0x9873e4"
!FamosRecordAccess methodsFor: 'recovered'!
noFormulaAccessor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := accessClass.
    recoveredValue1 := (recoveredValue0) noFormulaAccessor.
    accessClass := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ac668; bytecode file offset 0x9a8ff8"
!FamosRecordAccess methodsFor: 'recovered'!
compare: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := accessClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) compare: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ceae8; bytecode file offset 0x9cb3a0"
!FamosRecordAccess methodsFor: 'recovered'!
startingRecordPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := offsetInFile.
    recoveredValue1 := offsetInData.
    (recoveredValue0) incPosition: (recoveredValue1).
    recoveredValue2 := offsetInFile.
    ^recoveredValue2
! !

