"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c98; bytecode file offset 0x155d58"
!OSTapePrepare methodsFor: 'recovered'!
Operation
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d788; bytecode file offset 0x161038"
!OSTapePrepare methodsFor: 'recovered'!
Immediate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x200105c8; bytecode file offset 0x165330"
!OSTapePrepare methodsFor: 'recovered'!
Operation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e24; bytecode file offset 0x166e00"
!OSTapePrepare methodsFor: 'recovered'!
Immediate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (4) put: (recoveredValue0).
    ^self
! !

