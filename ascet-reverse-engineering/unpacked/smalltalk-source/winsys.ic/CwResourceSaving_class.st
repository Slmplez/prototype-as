"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000a0; bytecode file offset 0x7c350"
!CwResourceSaving class methodsFor: 'recovered'!
_PRAGMA_NlsCatCWa
    ^self
! !

"winsys.ic method 0x20001c04; bytecode file offset 0x7de10"
!CwResourceSaving class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"winsys.ic method 0x20005ea8; bytecode file offset 0x820c4"
!CwResourceSaving class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCWa.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

