"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200000a8; bytecode file offset 0x232e0"
!EswNullStream methodsFor: 'recovered'!
close
    ^self
! !

"cfsnls.ic method 0x20001764; bytecode file offset 0x24994"
!EswNullStream methodsFor: 'recovered'!
initialize
    position := 1.
    ^self
! !

"cfsnls.ic method 0x200019fc; bytecode file offset 0x24c64"
!EswNullStream methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := position.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002ce8; bytecode file offset 0x25f18"
!EswNullStream methodsFor: 'recovered'!
nextPut: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := position.
    recoveredValue1 := (recoveredValue0) + (1).
    position := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x20003c34; bytecode file offset 0x26e68"
!EswNullStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := position.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    position := recoveredValue3.
    ^self
! !

