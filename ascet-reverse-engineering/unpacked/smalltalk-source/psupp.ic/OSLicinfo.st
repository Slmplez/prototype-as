"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c68; bytecode file offset 0x155d58"
!OSLicinfo methodsFor: 'recovered'!
cbLicInfo
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d74c; bytecode file offset 0x161038"
!OSLicinfo methodsFor: 'recovered'!
fRuntimeKeyAvail
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dd30; bytecode file offset 0x1615c8"
!OSLicinfo methodsFor: 'recovered'!
fLicVerified
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (8).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ae4; bytecode file offset 0x165330"
!OSLicinfo methodsFor: 'recovered'!
cbLicInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012614; bytecode file offset 0x166e00"
!OSLicinfo methodsFor: 'recovered'!
fRuntimeKeyAvail: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014708; bytecode file offset 0x1683c0"
!OSLicinfo methodsFor: 'recovered'!
fLicVerified: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

