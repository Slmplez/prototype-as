"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008478; bytecode file offset 0x15caa4"
!OSExceptionPointers methodsFor: 'recovered'!
unhandledExceptionFilter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := UnhandledExceptionFilter.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fd10; bytecode file offset 0x165330"
!OSExceptionPointers methodsFor: 'recovered'!
ExceptionRecord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200129e0; bytecode file offset 0x166e00"
!OSExceptionPointers methodsFor: 'recovered'!
ContextRecord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aaa0; bytecode file offset 0x16ea70"
!OSExceptionPointers methodsFor: 'recovered'!
ExceptionRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSExceptionRecord.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b920; bytecode file offset 0x16f1fc"
!OSExceptionPointers methodsFor: 'recovered'!
ContextRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSContext.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

