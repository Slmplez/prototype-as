"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001710; bytecode file offset 0x155d58"
!OSMciGetdevcapsParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003278; bytecode file offset 0x157170"
!OSMciGetdevcapsParms methodsFor: 'recovered'!
dwReturn
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004330; bytecode file offset 0x157f64"
!OSMciGetdevcapsParms methodsFor: 'recovered'!
dwItem
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010898; bytecode file offset 0x165330"
!OSMciGetdevcapsParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012cc8; bytecode file offset 0x166e00"
!OSMciGetdevcapsParms methodsFor: 'recovered'!
dwReturn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014564; bytecode file offset 0x1683c0"
!OSMciGetdevcapsParms methodsFor: 'recovered'!
dwItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

