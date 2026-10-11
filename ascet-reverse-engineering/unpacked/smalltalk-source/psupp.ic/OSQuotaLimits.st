"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ef0; bytecode file offset 0x155d58"
!OSQuotaLimits methodsFor: 'recovered'!
PagedPoolLimit
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ce4; bytecode file offset 0x157170"
!OSQuotaLimits methodsFor: 'recovered'!
NonPagedPoolLimit
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003b14; bytecode file offset 0x157f64"
!OSQuotaLimits methodsFor: 'recovered'!
MinimumWorkingSetSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005070; bytecode file offset 0x1589a4"
!OSQuotaLimits methodsFor: 'recovered'!
MaximumWorkingSetSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005774; bytecode file offset 0x159294"
!OSQuotaLimits methodsFor: 'recovered'!
PagefileLimit
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e304; bytecode file offset 0x161c00"
!OSQuotaLimits methodsFor: 'recovered'!
TimeLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011444; bytecode file offset 0x165330"
!OSQuotaLimits methodsFor: 'recovered'!
PagedPoolLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200122e4; bytecode file offset 0x166e00"
!OSQuotaLimits methodsFor: 'recovered'!
NonPagedPoolLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014090; bytecode file offset 0x1683c0"
!OSQuotaLimits methodsFor: 'recovered'!
MinimumWorkingSetSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150a4; bytecode file offset 0x169290"
!OSQuotaLimits methodsFor: 'recovered'!
MaximumWorkingSetSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ea8; bytecode file offset 0x169eb4"
!OSQuotaLimits methodsFor: 'recovered'!
PagefileLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200173cc; bytecode file offset 0x16afe8"
!OSQuotaLimits methodsFor: 'recovered'!
TimeLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

