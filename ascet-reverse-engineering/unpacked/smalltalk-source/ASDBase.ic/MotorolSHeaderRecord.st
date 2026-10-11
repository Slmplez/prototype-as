"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004c734; bytecode file offset 0x949118"
!MotorolSHeaderRecord methodsFor: 'recovered'!
hdr
    | recoveredValue0 |
    recoveredValue0 := (self) hex24WordAt: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098364; bytecode file offset 0x995850"
!MotorolSHeaderRecord methodsFor: 'recovered'!
putOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putOn: (recoveredValue1).
    ^self
! !

