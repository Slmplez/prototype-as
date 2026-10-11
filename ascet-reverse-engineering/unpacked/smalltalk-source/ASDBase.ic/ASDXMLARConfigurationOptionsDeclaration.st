"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002b68; bytecode file offset 0x8ffcfc"
!ASDXMLARConfigurationOptionsDeclaration methodsFor: 'recovered'!
initDeclarationFiles
    ^self
! !

"ASDBase.ic method 0x2016833c; bytecode file offset 0xa64c18"
!ASDXMLARConfigurationOptionsDeclaration methodsFor: 'recovered'!
selectOptionsPattern: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) options.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) attributeName.
    recoveredBlock5Value3 := (recoveredBlock5Value0) match: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

