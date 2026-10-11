"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001824; bytecode file offset 0x155d58"
!OSMultikeyhelp methodsFor: 'recovered'!
mkSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000323c; bytecode file offset 0x157170"
!OSMultikeyhelp methodsFor: 'recovered'!
mkKeylist
    | recoveredValue0 |
    recoveredValue0 := (self) int8At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c0d8; bytecode file offset 0x15fa24"
!OSMultikeyhelp methodsFor: 'recovered'!
szKeyphrase: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d7b8; bytecode file offset 0x161054"
!OSMultikeyhelp methodsFor: 'recovered'!
szKeyphrase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) arrayAt: (5) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010b2c; bytecode file offset 0x165330"
!OSMultikeyhelp methodsFor: 'recovered'!
mkSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200129bc; bytecode file offset 0x166e00"
!OSMultikeyhelp methodsFor: 'recovered'!
mkKeylist: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (4) put: (recoveredValue0).
    ^self
! !

