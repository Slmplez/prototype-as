"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002364; bytecode file offset 0x155d58"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
hour
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200024e0; bytecode file offset 0x155e38"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
min
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20002914; bytecode file offset 0x1561c4"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
sec
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200029b8; bytecode file offset 0x156280"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
frame
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (3).
    ^recoveredValue0
! !

"psupp.ic method 0x20003074; bytecode file offset 0x157170"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
fps
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200038f8; bytecode file offset 0x157190"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
dummy
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (5).
    ^recoveredValue0
! !

"psupp.ic method 0x20011114; bytecode file offset 0x165330"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
hour: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b70; bytecode file offset 0x16542c"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c48; bytecode file offset 0x1657d4"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
sec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011f78; bytecode file offset 0x1658ac"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
frame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (3) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e60; bytecode file offset 0x166e00"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
fps: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013598; bytecode file offset 0x166e30"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
dummy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (5) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200220c8; bytecode file offset 0x175964"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
pad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (6) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023970; bytecode file offset 0x177208"
!OSMmtimeAnon2Anon5 methodsFor: 'recovered'!
pad: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (6) put: (recoveredValue0) size: (2).
    ^self
! !

