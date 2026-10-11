"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d72a0; bytecode file offset 0x9d3b64"
!ASDXMLProjectOptionsDeclaration methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) declarationFiles: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202ba054; bytecode file offset 0xbb6928"
!ASDXMLProjectOptionsDeclaration methodsFor: 'recovered'!
readOptionsDeclarationsFromXMLFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ReadStream.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) projectOptionsDeclarationsString.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getDOMFromStream: (recoveredValue4) fileName: (recoveredValue5) rootTagName: ('OptionDeclarations').
    recoveredValue7 := recoveredValue6.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := [
    ^self
].
    (recoveredValue6) ifNil: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (self) readOptionsDeclarationsFromXMLDocument: (recoveredValue9) fileName: (recoveredValue10).
    ^recoveredValue11
! !

