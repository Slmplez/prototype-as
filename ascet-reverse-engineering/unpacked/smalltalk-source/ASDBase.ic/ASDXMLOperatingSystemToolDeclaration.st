"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200020d0; bytecode file offset 0x8ffcfc"
!ASDXMLOperatingSystemToolDeclaration methodsFor: 'recovered'!
initDeclarationFiles
    ^self
! !

"ASDBase.ic method 0x20006a04; bytecode file offset 0x908be4"
!ASDXMLOperatingSystemToolDeclaration methodsFor: 'recovered'!
externalOptionFile
    | recoveredValue0 |
    recoveredValue0 := (self) externalToolsOptionFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003822c; bytecode file offset 0x934b68"
!ASDXMLOperatingSystemToolDeclaration methodsFor: 'recovered'!
getXmlCategory: recoveredArg1
    ^'will_be_defined_later_after_reading_declaration_in_createWithOptions'
! !

"ASDBase.ic method 0x200d7270; bytecode file offset 0x9d3b64"
!ASDXMLOperatingSystemToolDeclaration methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) declarationFiles: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a8cd4; bytecode file offset 0xaa55d0"
!ASDXMLOperatingSystemToolDeclaration methodsFor: 'recovered'!
optionForKey: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) options.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

