"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c944; bytecode file offset 0x909658"
!ASDXMLImportIssueLongComponentPath methodsFor: 'recovered'!
repair: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20121f84; bytecode file offset 0xa1e848"
!ASDXMLImportIssueLongComponentPath methodsFor: 'recovered'!
initOn: recoveredArg1 path: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: ('Resulting workspace path too long') item: (recoveredValue0).
    issueType := 'error'.
    ^self
! !

