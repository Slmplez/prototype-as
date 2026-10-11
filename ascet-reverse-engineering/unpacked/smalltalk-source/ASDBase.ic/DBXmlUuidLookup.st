"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20081bd0; bytecode file offset 0x97e554"
!DBXmlUuidLookup methodsFor: 'recovered'!
itemByUUID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := database.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) itemByUUID: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bded4; bytecode file offset 0x9bb178"
!DBXmlUuidLookup methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    database := recoveredValue0.
    ^self
! !

