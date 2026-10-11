"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009d624; bytecode file offset 0x999ef8"
!ASDXMLExportIssueIncompatibility methodsFor: 'recovered'!
errorDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := incompatibility.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('Incompatible Object: ') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b5db0; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueIncompatibility methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('07').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e16e4; bytecode file offset 0x9ddfa8"
!ASDXMLExportIssueIncompatibility methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ascetVersion.
    recoveredValue1 := ('An object not compatible with ASCET ') , (recoveredValue0).
    recoveredValue2 := (' was detected.\You will either need a patch for this version or you have to adapt the generated AMD file manually.') withCrs.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20169b1c; bytecode file offset 0xa663dc"
!ASDXMLExportIssueIncompatibility methodsFor: 'recovered'!
initOn: recoveredArg1 incompatibility: recoveredArg2 ascetVersion: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    incompatibility := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    ascetVersion := recoveredValue2.
    type := 'warning'.
    ^self
! !

