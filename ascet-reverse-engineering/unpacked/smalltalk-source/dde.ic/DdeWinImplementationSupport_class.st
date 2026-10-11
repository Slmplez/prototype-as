"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x20000010; bytecode file offset 0x62d0"
!DdeWinImplementationSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatDDEsWin
    ^self
! !

"dde.ic method 0x20000070; bytecode file offset 0x634c"
!DdeWinImplementationSupport class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"dde.ic method 0x200003bc; bytecode file offset 0x669c"
!DdeWinImplementationSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatDDEsWin.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

