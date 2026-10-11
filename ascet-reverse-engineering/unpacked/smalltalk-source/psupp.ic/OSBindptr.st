"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000fb3c; bytecode file offset 0x165330"
!OSBindptr methodsFor: 'recovered'!
lptcomp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010760; bytecode file offset 0x165330"
!OSBindptr methodsFor: 'recovered'!
lpvardesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010d60; bytecode file offset 0x165330"
!OSBindptr methodsFor: 'recovered'!
lpfuncdesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad20; bytecode file offset 0x16ea70"
!OSBindptr methodsFor: 'recovered'!
lpvardesc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSVardesc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ae60; bytecode file offset 0x16ea70"
!OSBindptr methodsFor: 'recovered'!
lpfuncdesc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSFuncdesc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b004; bytecode file offset 0x16ea70"
!OSBindptr methodsFor: 'recovered'!
lptcomp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSITypeComp.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

