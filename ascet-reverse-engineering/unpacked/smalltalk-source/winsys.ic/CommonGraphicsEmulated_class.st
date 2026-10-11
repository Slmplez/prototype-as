"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000050; bytecode file offset 0x7c350"
!CommonGraphicsEmulated class methodsFor: 'recovered'!
_PRAGMA_CgConstants
    ^self
! !

"winsys.ic method 0x20000180; bytecode file offset 0x7c350"
!CommonGraphicsEmulated class methodsFor: 'recovered'!
_PRAGMA_NlsCatCG
    ^self
! !

"winsys.ic method 0x20001b68; bytecode file offset 0x7de10"
!CommonGraphicsEmulated class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"winsys.ic method 0x20005ee4; bytecode file offset 0x820c4"
!CommonGraphicsEmulated class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCG.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

