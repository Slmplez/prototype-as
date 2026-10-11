"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b24; bytecode file offset 0x155d58"
!OSAccel methodsFor: 'recovered'!
fVirt
    | recoveredValue0 |
    recoveredValue0 := (self) int8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000271c; bytecode file offset 0x1561c4"
!OSAccel methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ef4; bytecode file offset 0x157170"
!OSAccel methodsFor: 'recovered'!
cmd
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e85c; bytecode file offset 0x1620f4"
!OSAccel methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2000e874; bytecode file offset 0x16210c"
!OSAccel methodsFor: 'recovered'!
cmd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010358; bytecode file offset 0x165330"
!OSAccel methodsFor: 'recovered'!
fVirt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200253cc; bytecode file offset 0x178c70"
!OSAccel methodsFor: 'recovered'!
createAcceleratorTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHaccel.
    recoveredValue1 := CreateAcceleratorTable.
    recoveredValue2 := reference.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

