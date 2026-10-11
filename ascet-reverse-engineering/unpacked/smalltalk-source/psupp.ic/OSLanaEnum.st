"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001f20; bytecode file offset 0x155d58"
!OSLanaEnum methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fb30; bytecode file offset 0x165330"
!OSLanaEnum methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20025604; bytecode file offset 0x178e9c"
!OSLanaEnum methodsFor: 'recovered'!
lana: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (1) put: (recoveredValue0) size: (255).
    ^self
! !

"psupp.ic method 0x20027514; bytecode file offset 0x17adb0"
!OSLanaEnum methodsFor: 'recovered'!
lana
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (1) size: (255) type: (recoveredValue0).
    ^recoveredValue1
! !

