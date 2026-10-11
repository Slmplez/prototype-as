"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200016d4; bytecode file offset 0x155d58"
!OSUnloadDllDebugInfo methodsFor: 'recovered'!
lpBaseOfDll
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fe54; bytecode file offset 0x165330"
!OSUnloadDllDebugInfo methodsFor: 'recovered'!
lpBaseOfDll: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

