"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d33c; bytecode file offset 0x160c04"
!OSCbtactivatestruct methodsFor: 'recovered'!
fMouse
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010058; bytecode file offset 0x165330"
!OSCbtactivatestruct methodsFor: 'recovered'!
fMouse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126b0; bytecode file offset 0x166e00"
!OSCbtactivatestruct methodsFor: 'recovered'!
hWndActive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b81c; bytecode file offset 0x16f1fc"
!OSCbtactivatestruct methodsFor: 'recovered'!
hWndActive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

