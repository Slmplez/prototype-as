"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200011a0; bytecode file offset 0x155d58"
!OSLargeInteger methodsFor: 'recovered'!
LowPart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002484; bytecode file offset 0x155d58"
!OSLargeInteger methodsFor: 'recovered'!
QuadPart
    | recoveredValue0 |
    recoveredValue0 := (self) int64At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e1c; bytecode file offset 0x157170"
!OSLargeInteger methodsFor: 'recovered'!
HighPart
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200085a8; bytecode file offset 0x15caa4"
!OSLargeInteger methodsFor: 'recovered'!
queryPerformanceFrequency
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := QueryPerformanceFrequency.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200087b8; bytecode file offset 0x15caa4"
!OSLargeInteger methodsFor: 'recovered'!
allocateLocallyUniqueId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AllocateLocallyUniqueId.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009128; bytecode file offset 0x15caa4"
!OSLargeInteger methodsFor: 'recovered'!
queryPerformanceCounter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := QueryPerformanceCounter.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ca70; bytecode file offset 0x160b8c"
!OSLargeInteger methodsFor: 'recovered'!
u
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeIntegerAnon2.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200105f8; bytecode file offset 0x165330"
!OSLargeInteger methodsFor: 'recovered'!
u: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010988; bytecode file offset 0x165330"
!OSLargeInteger methodsFor: 'recovered'!
LowPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001133c; bytecode file offset 0x165330"
!OSLargeInteger methodsFor: 'recovered'!
QuadPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int64At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e48; bytecode file offset 0x166e00"
!OSLargeInteger methodsFor: 'recovered'!
HighPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

