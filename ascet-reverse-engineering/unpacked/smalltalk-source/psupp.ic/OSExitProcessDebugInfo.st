"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001224; bytecode file offset 0x155d58"
!OSExitProcessDebugInfo methodsFor: 'recovered'!
dwExitCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200113c0; bytecode file offset 0x165330"
!OSExitProcessDebugInfo methodsFor: 'recovered'!
dwExitCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

