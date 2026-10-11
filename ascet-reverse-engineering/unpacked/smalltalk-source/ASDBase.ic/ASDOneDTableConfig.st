"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006805c; bytecode file offset 0x965b90"
!ASDOneDTableConfig methodsFor: 'recovered'!
configXDistrib
    | recoveredValue0 |
    recoveredValue0 := configXDistrib.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c06bc; bytecode file offset 0x9bd228"
!ASDOneDTableConfig methodsFor: 'recovered'!
configXDistrib: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configXDistrib := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6564; bytecode file offset 0x9e2e24"
!ASDOneDTableConfig methodsFor: 'recovered'!
convertToASDV50Implementation
    | recoveredValue0 |
    super convertToASDV50Implementation.
    recoveredValue0 := (self) configXDistrib.
    (recoveredValue0) convertToASDV50Implementation.
    ^self
! !

"ASDBase.ic method 0x20120b50; bytecode file offset 0xa1d42c"
!ASDOneDTableConfig methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super updateDataElement: (recoveredValue0).
    recoveredValue1 := (self) configXDistrib.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) xDistribution.
    (recoveredValue1) updateDataElement: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

