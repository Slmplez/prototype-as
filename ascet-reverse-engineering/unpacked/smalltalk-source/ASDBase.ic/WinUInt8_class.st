"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a031c; bytecode file offset 0x99cbd8"
!WinUInt8 class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 |
    recoveredValue0 := super new: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20113158; bytecode file offset 0xa0fa2c"
!WinUInt8 class methodsFor: 'recovered'!
with: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := WinUInt8.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) uint8At: (0) put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

