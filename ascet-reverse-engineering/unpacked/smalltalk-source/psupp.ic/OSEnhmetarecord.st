"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000111c; bytecode file offset 0x155d58"
!OSEnhmetarecord methodsFor: 'recovered'!
iType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002db0; bytecode file offset 0x157170"
!OSEnhmetarecord methodsFor: 'recovered'!
nSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bfa8; bytecode file offset 0x15fa24"
!OSEnhmetarecord methodsFor: 'recovered'!
dParm: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000da08; bytecode file offset 0x161514"
!OSEnhmetarecord methodsFor: 'recovered'!
dParm
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fb54; bytecode file offset 0x165330"
!OSEnhmetarecord methodsFor: 'recovered'!
iType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001325c; bytecode file offset 0x166e00"
!OSEnhmetarecord methodsFor: 'recovered'!
nSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

