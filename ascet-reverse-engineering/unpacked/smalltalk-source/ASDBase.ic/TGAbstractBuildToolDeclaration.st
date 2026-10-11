"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20088944; bytecode file offset 0x985628"
!TGAbstractBuildToolDeclaration methodsFor: 'recovered'!
validScoopixSchemaVersions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) scoopixSchemaVersion.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2a18; bytecode file offset 0x9af4bc"
!TGAbstractBuildToolDeclaration methodsFor: 'recovered'!
scoopixSchemaVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) scoopixSchemaVersionKey.
    recoveredValue2 := (self) getAttributeValue: (recoveredValue1) default: ('').
    ^recoveredValue2
! !

