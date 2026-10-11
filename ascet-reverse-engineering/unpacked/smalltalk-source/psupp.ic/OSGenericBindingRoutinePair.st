"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200010ec; bytecode file offset 0x155d58"
!OSGenericBindingRoutinePair methodsFor: 'recovered'!
pfnBind
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f24; bytecode file offset 0x157170"
!OSGenericBindingRoutinePair methodsFor: 'recovered'!
pfnUnbind
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010b14; bytecode file offset 0x165330"
!OSGenericBindingRoutinePair methodsFor: 'recovered'!
pfnBind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d64; bytecode file offset 0x166e00"
!OSGenericBindingRoutinePair methodsFor: 'recovered'!
pfnUnbind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

