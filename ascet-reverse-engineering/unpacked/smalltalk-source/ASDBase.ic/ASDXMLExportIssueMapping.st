"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019214; bytecode file offset 0x92209c"
!ASDXMLExportIssueMapping methodsFor: 'recovered'!
errorDescription
    ^'Software Component Mapping not compatible'
! !

"ASDBase.ic method 0x20042864; bytecode file offset 0x93f170"
!ASDXMLExportIssueMapping methodsFor: 'recovered'!
description
    | recoveredValue0 |
    recoveredValue0 := ('There exists mappings in Software Components that are not compatible with older versions.') withCrs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b5af8; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueMapping methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('13').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe768; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueMapping methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

