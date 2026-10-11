"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003958; bytecode file offset 0x7fbb0"
!CwButtonEvent methodsFor: 'recovered'!
button
    | recoveredValue0 |
    recoveredValue0 := button.
    ^recoveredValue0
! !

"winsys.ic method 0x20007e38; bytecode file offset 0x84048"
!CwButtonEvent methodsFor: 'recovered'!
button: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20011960; bytecode file offset 0x8db3c"
!CwButtonEvent methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) button.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (' button=') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    ^self
! !

