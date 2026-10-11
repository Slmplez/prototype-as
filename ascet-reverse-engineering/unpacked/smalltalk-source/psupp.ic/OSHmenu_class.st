"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009364; bytecode file offset 0x15cd08"
!OSHmenu class methodsFor: 'recovered'!
createMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CreateMenu.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200093dc; bytecode file offset 0x15cd08"
!OSHmenu class methodsFor: 'recovered'!
createPopupMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CreatePopupMenu.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000bd78; bytecode file offset 0x15f71c"
!OSHmenu class methodsFor: 'recovered'!
loadMenuIndirect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LoadMenuIndirect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

