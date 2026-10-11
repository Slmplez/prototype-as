"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200571a8; bytecode file offset 0x956284"
!ASDTargetSpecificOptionDefaults methodsFor: 'recovered'!
xmlCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) targetOptionsDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) xmlCategoryTargetSpecific: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b700; bytecode file offset 0x96873c"
!ASDTargetSpecificOptionDefaults methodsFor: 'recovered'!
targetOptionsDeclaration
    | recoveredValue0 |
    recoveredValue0 := targetOptionsDeclaration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200915f0; bytecode file offset 0x98e0cc"
!ASDTargetSpecificOptionDefaults methodsFor: 'recovered'!
updateOptions
    super updateOptions.
    ^self
! !

"ASDBase.ic method 0x20122168; bytecode file offset 0xa1ea2c"
!ASDTargetSpecificOptionDefaults methodsFor: 'recovered'!
updateOption: recoveredArg1 withXMLDeclaration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) setAttribute: ('visible') value: (nil).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := super updateOption: (recoveredValue1) withXMLDeclaration: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20153598; bytecode file offset 0xa4fe60"
!ASDTargetSpecificOptionDefaults methodsFor: 'recovered'!
targetOptionsDeclaration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    customDeclarations := nil.
    recoveredValue0 := recoveredArg1.
    targetOptionsDeclaration := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) target.
    recoveredValue3 := (recoveredValue2) getTargetSpecificPath.
    recoveredValue4 := (recoveredValue3) removeDoubleBackslashes.
    recoveredValue5 := (self) getDeclarationFilesInRootPath: (recoveredValue4).
    (self) declarationFiles: (recoveredValue5).
    ^self
! !

