"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002448; bytecode file offset 0x155d58"
!OSUdaccel methodsFor: 'recovered'!
nSec
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200034ac; bytecode file offset 0x157170"
!OSUdaccel methodsFor: 'recovered'!
nInc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010eec; bytecode file offset 0x165330"
!OSUdaccel methodsFor: 'recovered'!
nSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200122cc; bytecode file offset 0x166e00"
!OSUdaccel methodsFor: 'recovered'!
nInc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

