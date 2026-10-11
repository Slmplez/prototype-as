"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ff8; bytecode file offset 0x155d58"
!OSSessionHeader methodsFor: 'recovered'!
sessName
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000251c; bytecode file offset 0x155e38"
!OSSessionHeader methodsFor: 'recovered'!
numSess
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x200026d4; bytecode file offset 0x1561c4"
!OSSessionHeader methodsFor: 'recovered'!
rcvDgOutstanding
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002964; bytecode file offset 0x156280"
!OSSessionHeader methodsFor: 'recovered'!
rcvAnyOutstanding
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (3).
    ^recoveredValue0
! !

"psupp.ic method 0x2001037c; bytecode file offset 0x165330"
!OSSessionHeader methodsFor: 'recovered'!
sessName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011af8; bytecode file offset 0x16542c"
!OSSessionHeader methodsFor: 'recovered'!
numSess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011bc4; bytecode file offset 0x1657d4"
!OSSessionHeader methodsFor: 'recovered'!
rcvDgOutstanding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011f84; bytecode file offset 0x1658ac"
!OSSessionHeader methodsFor: 'recovered'!
rcvAnyOutstanding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (3) put: (recoveredValue0).
    ^self
! !

