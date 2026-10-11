"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001488; bytecode file offset 0x155d58"
!OSMmtimeAnon2 methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001b9c; bytecode file offset 0x155d58"
!OSMmtimeAnon2 methodsFor: 'recovered'!
ticks
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001d10; bytecode file offset 0x155d58"
!OSMmtimeAnon2 methodsFor: 'recovered'!
ms
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001db8; bytecode file offset 0x155d58"
!OSMmtimeAnon2 methodsFor: 'recovered'!
sample
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cb60; bytecode file offset 0x160b8c"
!OSMmtimeAnon2 methodsFor: 'recovered'!
smpte
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMmtimeAnon2Anon5.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cb70; bytecode file offset 0x160b8c"
!OSMmtimeAnon2 methodsFor: 'recovered'!
midi
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMmtimeAnon2Anon6.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000faac; bytecode file offset 0x165330"
!OSMmtimeAnon2 methodsFor: 'recovered'!
smpte: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2000fcbc; bytecode file offset 0x165330"
!OSMmtimeAnon2 methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2000ffe0; bytecode file offset 0x165330"
!OSMmtimeAnon2 methodsFor: 'recovered'!
ms: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200100d0; bytecode file offset 0x165330"
!OSMmtimeAnon2 methodsFor: 'recovered'!
midi: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010928; bytecode file offset 0x165330"
!OSMmtimeAnon2 methodsFor: 'recovered'!
sample: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011660; bytecode file offset 0x165330"
!OSMmtimeAnon2 methodsFor: 'recovered'!
ticks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

