"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000f0; bytecode file offset 0x7c350"
!CgWinImageSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatCGsWin
    ^self
! !

"winsys.ic method 0x20001c34; bytecode file offset 0x7de10"
!CgWinImageSupport class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"winsys.ic method 0x20005ed0; bytecode file offset 0x820c4"
!CgWinImageSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCGsWin.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

