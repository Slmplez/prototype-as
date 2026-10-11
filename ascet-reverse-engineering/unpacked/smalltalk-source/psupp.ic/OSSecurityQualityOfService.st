"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000126c; bytecode file offset 0x155d58"
!OSSecurityQualityOfService methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200032a8; bytecode file offset 0x157170"
!OSSecurityQualityOfService methodsFor: 'recovered'!
ImpersonationLevel
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dd0c; bytecode file offset 0x1615c8"
!OSSecurityQualityOfService methodsFor: 'recovered'!
ContextTrackingMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (8).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dd48; bytecode file offset 0x1615e0"
!OSSecurityQualityOfService methodsFor: 'recovered'!
EffectiveOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (9).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ad8; bytecode file offset 0x165330"
!OSSecurityQualityOfService methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e18; bytecode file offset 0x166e00"
!OSSecurityQualityOfService methodsFor: 'recovered'!
ImpersonationLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200148e8; bytecode file offset 0x1683c0"
!OSSecurityQualityOfService methodsFor: 'recovered'!
ContextTrackingMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014b64; bytecode file offset 0x168414"
!OSSecurityQualityOfService methodsFor: 'recovered'!
EffectiveOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (9) put: (recoveredValue0).
    ^self
! !

