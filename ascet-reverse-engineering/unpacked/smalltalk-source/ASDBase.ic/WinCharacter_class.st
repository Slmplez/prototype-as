"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a02fc; bytecode file offset 0x99cbd8"
!WinCharacter class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 |
    recoveredValue0 := super new: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20125dc4; bytecode file offset 0xa22688"
!WinCharacter class methodsFor: 'recovered'!
with: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := WinCharacter.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) value.
    (recoveredValue2) uint8At: (0) put: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

