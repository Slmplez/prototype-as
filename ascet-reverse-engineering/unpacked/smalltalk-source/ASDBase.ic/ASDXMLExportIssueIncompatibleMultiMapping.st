"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200227a8; bytecode file offset 0x92209c"
!ASDXMLExportIssueIncompatibleMultiMapping methodsFor: 'recovered'!
errorDescription
    ^'Software Component Multi Mapping'
! !

"ASDBase.ic method 0x200427f4; bytecode file offset 0x93f170"
!ASDXMLExportIssueIncompatibleMultiMapping methodsFor: 'recovered'!
description
    | recoveredValue0 |
    recoveredValue0 := ('There exists multiple mappings for source objects.') withCrs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b6fe0; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueIncompatibleMultiMapping methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('12').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe7a4; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueIncompatibleMultiMapping methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'warning'.
    ^self
! !

