"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200013e0; bytecode file offset 0x155d58"
!OSTimeval methodsFor: 'recovered'!
tvSec
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000368c; bytecode file offset 0x157170"
!OSTimeval methodsFor: 'recovered'!
tvUsec
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010124; bytecode file offset 0x165330"
!OSTimeval methodsFor: 'recovered'!
tvSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013094; bytecode file offset 0x166e00"
!OSTimeval methodsFor: 'recovered'!
tvUsec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

