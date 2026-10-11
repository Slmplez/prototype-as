"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001dac; bytecode file offset 0x155d58"
!OSTapeErase methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d794; bytecode file offset 0x161038"
!OSTapeErase methodsFor: 'recovered'!
Immediate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011348; bytecode file offset 0x165330"
!OSTapeErase methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013238; bytecode file offset 0x166e00"
!OSTapeErase methodsFor: 'recovered'!
Immediate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (4) put: (recoveredValue0).
    ^self
! !

