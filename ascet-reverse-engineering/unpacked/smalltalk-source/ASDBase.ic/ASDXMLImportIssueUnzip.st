"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cb4c; bytecode file offset 0x909658"
!ASDXMLImportIssueUnzip methodsFor: 'recovered'!
repair: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20121eb4; bytecode file offset 0xa1e778"
!ASDXMLImportIssueUnzip methodsFor: 'recovered'!
initOn: recoveredArg1 error: recoveredArg2
    super initOn: ('Error while extracting') item: (nil).
    issueType := 'error'.
    ^self
! !

