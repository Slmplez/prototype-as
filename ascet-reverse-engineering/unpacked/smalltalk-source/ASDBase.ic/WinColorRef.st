"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ad0c; bytecode file offset 0x947768"
!WinColorRef methodsFor: 'recovered'!
red
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ad30; bytecode file offset 0x947768"
!WinColorRef methodsFor: 'recovered'!
asInteger
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b118; bytecode file offset 0x947a60"
!WinColorRef methodsFor: 'recovered'!
green
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b414; bytecode file offset 0x947d20"
!WinColorRef methodsFor: 'recovered'!
blue
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5d04; bytecode file offset 0x9a25bc"
!WinColorRef methodsFor: 'recovered'!
red: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5f14; bytecode file offset 0x9a27f0"
!WinColorRef methodsFor: 'recovered'!
green: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6110; bytecode file offset 0x9a2a28"
!WinColorRef methodsFor: 'recovered'!
blue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

