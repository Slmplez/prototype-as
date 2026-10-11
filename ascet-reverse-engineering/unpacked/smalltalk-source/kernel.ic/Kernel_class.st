"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200001cc; bytecode file offset 0x4b1b0"
!Kernel class methodsFor: 'recovered'!
_PRAGMA_NlsCatKRN
    ^self
! !

"kernel.ic method 0x20002a44; bytecode file offset 0x4d99c"
!Kernel class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"kernel.ic method 0x200033b4; bytecode file offset 0x4e2f8"
!Kernel class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := ExceptionalEvent.
    (recoveredValue0) initializeSystemExceptions.
    ^self
! !

"kernel.ic method 0x2000998c; bytecode file offset 0x548ac"
!Kernel class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := ExceptionalEvent.
    (recoveredValue2) initializeSystemExceptionDescriptions.
    ^self
! !

