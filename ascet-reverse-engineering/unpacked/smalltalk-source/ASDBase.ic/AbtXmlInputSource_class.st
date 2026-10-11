"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013c8c; bytecode file offset 0x912098"
!AbtXmlInputSource class methodsFor: 'recovered'!
codePageConverter
    | recoveredValue0 |
    recoveredValue0 := CodePageConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200543f8; bytecode file offset 0x951190"
!AbtXmlInputSource class methodsFor: 'recovered'!
codePageConverter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CodePageConverter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200892fc; bytecode file offset 0x985bf8"
!AbtXmlInputSource class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    recoveredValue0 := AbtXmlStreamConverter.
    (self) codePageConverter: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200aade8; bytecode file offset 0x9a76ac"
!AbtXmlInputSource class methodsFor: 'recovered'!
fromString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := ReadStream.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) on: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) characterStream: (recoveredValue3).
    ^recoveredValue4
! !

