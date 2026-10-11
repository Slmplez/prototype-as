"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200004e8; bytecode file offset 0x18d4c"
!AbtXmlInputSource class methodsFor: 'recovered'!
codePageConverter
    | recoveredValue0 |
    recoveredValue0 := CodePageConverter.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200009b8; bytecode file offset 0x191f8"
!AbtXmlInputSource class methodsFor: 'recovered'!
codePageConverter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CodePageConverter := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20001638; bytecode file offset 0x19e28"
!AbtXmlInputSource class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    recoveredValue0 := AbtXmlStreamConverter.
    (self) codePageConverter: (recoveredValue0).
    ^self
! !

"abtxmlp.ic method 0x20001dd0; bytecode file offset 0x1a5c8"
!AbtXmlInputSource class methodsFor: 'recovered'!
fromString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := CompiledMethod.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) on: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) characterStream: (recoveredValue3).
    ^recoveredValue4
! !

