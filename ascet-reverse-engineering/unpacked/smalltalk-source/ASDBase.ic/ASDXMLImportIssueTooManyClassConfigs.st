"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c95c; bytecode file offset 0x909658"
!ASDXMLImportIssueTooManyClassConfigs methodsFor: 'recovered'!
repair: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2018852c; bytecode file offset 0xa84df0"
!ASDXMLImportIssueTooManyClassConfigs methodsFor: 'recovered'!
initOn: recoveredArg1 prev: recoveredArg2 now: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super initOn: ('More than one class configuration') item: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    prev := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    now := recoveredValue2.
    issueType := 'error'.
    ^self
! !

