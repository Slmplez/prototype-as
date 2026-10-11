"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005ce6c; bytecode file offset 0x9599ac"
!AbtXmlMappingParser class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlDeserializationConfiguration.
    recoveredValue1 := (recoveredValue0) newMappingParserConfiguration.
    recoveredValue2 := (self) usingConfiguration: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac278; bytecode file offset 0x9a8bc4"
!AbtXmlMappingParser class methodsFor: 'recovered'!
usingConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initializeFromConfiguration: (recoveredValue1).
    ^recoveredValue2
! !

