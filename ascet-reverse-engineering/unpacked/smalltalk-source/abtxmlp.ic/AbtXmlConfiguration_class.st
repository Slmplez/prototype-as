"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000560; bytecode file offset 0x18d4c"
!AbtXmlConfiguration class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200009d0; bytecode file offset 0x191f8"
!AbtXmlConfiguration class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20000ca0; bytecode file offset 0x1948c"
!AbtXmlConfiguration class methodsFor: 'recovered'!
reset
    (self) current: (nil).
    ^self
! !

"abtxmlp.ic method 0x2000364c; bytecode file offset 0x1be4c"
!AbtXmlConfiguration class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := EsImageStartUp.
    recoveredValue2 := (recoveredValue1) iniFileGetContentsArray: ('Xml').
    recoveredValue3 := (recoveredValue0) properties: (recoveredValue2).
    (self) current: (recoveredValue3).
    ^self
! !

