"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000070; bytecode file offset 0x7c350"
!CommonPrintingEmulatedPlatforms class methodsFor: 'recovered'!
_PRAGMA_NlsCatCP
    ^self
! !

"winsys.ic method 0x20001bb0; bytecode file offset 0x7de10"
!CommonPrintingEmulatedPlatforms class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"winsys.ic method 0x20005ef8; bytecode file offset 0x820c4"
!CommonPrintingEmulatedPlatforms class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCP.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

