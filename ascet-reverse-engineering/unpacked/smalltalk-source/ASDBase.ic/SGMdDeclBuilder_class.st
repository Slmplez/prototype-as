"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005cdf4; bytecode file offset 0x9599ac"
!SGMdDeclBuilder class methodsFor: 'recovered'!
createNoContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdImportTable.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) createWithImportTable: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20096ce0; bytecode file offset 0x9937fc"
!SGMdDeclBuilder class methodsFor: 'recovered'!
createWithImportTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) importsTable: (recoveredValue2).
    ^recoveredValue0
! !

