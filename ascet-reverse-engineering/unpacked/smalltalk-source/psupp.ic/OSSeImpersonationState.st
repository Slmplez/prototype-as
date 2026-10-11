"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200010bc; bytecode file offset 0x155d58"
!OSSeImpersonationState methodsFor: 'recovered'!
Token
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200046a8; bytecode file offset 0x157f64"
!OSSeImpersonationState methodsFor: 'recovered'!
Level
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d764; bytecode file offset 0x161038"
!OSSeImpersonationState methodsFor: 'recovered'!
CopyOnOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d7d4; bytecode file offset 0x16106c"
!OSSeImpersonationState methodsFor: 'recovered'!
EffectiveOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (5).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ff14; bytecode file offset 0x165330"
!OSSeImpersonationState methodsFor: 'recovered'!
Token: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200130dc; bytecode file offset 0x166e00"
!OSSeImpersonationState methodsFor: 'recovered'!
CopyOnOpen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001358c; bytecode file offset 0x166e30"
!OSSeImpersonationState methodsFor: 'recovered'!
EffectiveOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (5) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001391c; bytecode file offset 0x1683c0"
!OSSeImpersonationState methodsFor: 'recovered'!
Level: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

