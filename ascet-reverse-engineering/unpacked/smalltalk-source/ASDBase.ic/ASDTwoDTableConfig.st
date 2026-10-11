"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069790; bytecode file offset 0x966bdc"
!ASDTwoDTableConfig methodsFor: 'recovered'!
configYDistrib
    | recoveredValue0 |
    recoveredValue0 := configYDistrib.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c1000; bytecode file offset 0x9bdf14"
!ASDTwoDTableConfig methodsFor: 'recovered'!
configYDistrib: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configYDistrib := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6550; bytecode file offset 0x9e2e24"
!ASDTwoDTableConfig methodsFor: 'recovered'!
convertToASDV50Implementation
    | recoveredValue0 |
    super convertToASDV50Implementation.
    recoveredValue0 := (self) configYDistrib.
    (recoveredValue0) convertToASDV50Implementation.
    ^self
! !

"ASDBase.ic method 0x20120b68; bytecode file offset 0xa1d42c"
!ASDTwoDTableConfig methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super updateDataElement: (recoveredValue0).
    recoveredValue1 := (self) configYDistrib.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) yDistribution.
    (recoveredValue1) updateDataElement: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

