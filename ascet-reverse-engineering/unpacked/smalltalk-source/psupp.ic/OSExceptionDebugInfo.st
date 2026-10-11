"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000b5c8; bytecode file offset 0x15eea8"
!OSExceptionDebugInfo methodsFor: 'recovered'!
dwFirstChance
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ca10; bytecode file offset 0x160b8c"
!OSExceptionDebugInfo methodsFor: 'recovered'!
ExceptionRecord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSExceptionRecord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010994; bytecode file offset 0x165330"
!OSExceptionDebugInfo methodsFor: 'recovered'!
ExceptionRecord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020000; bytecode file offset 0x173898"
!OSExceptionDebugInfo methodsFor: 'recovered'!
dwFirstChance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (80) put: (recoveredValue0).
    ^self
! !

