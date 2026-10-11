"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200212f0; bytecode file offset 0x92209c"
!ASDXMLExportIssueMissingImplementation methodsFor: 'recovered'!
description
    ^'C-code refering to a missing implementation. This C-code will get lost!!'
! !

"ASDBase.ic method 0x20026ae8; bytecode file offset 0x923928"
!ASDXMLExportIssueMissingImplementation methodsFor: 'recovered'!
errorDescription
    ^'Missing Implementation'
! !

"ASDBase.ic method 0x200b5c30; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueMissingImplementation methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('03').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe718; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueMissingImplementation methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'warning'.
    ^self
! !

