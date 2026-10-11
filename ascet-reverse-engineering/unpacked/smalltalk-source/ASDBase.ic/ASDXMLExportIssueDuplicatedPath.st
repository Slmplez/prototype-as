"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b4f4; bytecode file offset 0x92209c"
!ASDXMLExportIssueDuplicatedPath methodsFor: 'recovered'!
errorDescription
    ^'Duplicated export path'
! !

"ASDBase.ic method 0x200b5cd8; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueDuplicatedPath methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('01').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe754; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueDuplicatedPath methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

