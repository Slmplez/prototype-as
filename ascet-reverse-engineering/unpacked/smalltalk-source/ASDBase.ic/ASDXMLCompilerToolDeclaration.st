"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001bd0; bytecode file offset 0x8ffcfc"
!ASDXMLCompilerToolDeclaration methodsFor: 'recovered'!
initDeclarationFiles
    ^self
! !

"ASDBase.ic method 0x200082d0; bytecode file offset 0x908be4"
!ASDXMLCompilerToolDeclaration methodsFor: 'recovered'!
externalOptionFile
    | recoveredValue0 |
    recoveredValue0 := (self) externalToolsOptionFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200381fc; bytecode file offset 0x934b68"
!ASDXMLCompilerToolDeclaration methodsFor: 'recovered'!
getXmlCategory: recoveredArg1
    ^'will_be_defined_later_after_reading_declaration_in_createWithOptions'
! !

"ASDBase.ic method 0x200d7288; bytecode file offset 0x9d3b64"
!ASDXMLCompilerToolDeclaration methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) declarationFiles: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a8ce8; bytecode file offset 0xaa55d0"
!ASDXMLCompilerToolDeclaration methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20252a4c; bytecode file offset 0xb4f350"
!ASDXMLCompilerToolDeclaration methodsFor: 'recovered'!
codeRelevantOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('truncationDirection').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('inline').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('private').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('public').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('integerBitSize').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('castPostProcessing').
    ^recoveredValue1
! !

