"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"oleb.ic method 0x20000000; bytecode file offset 0x749c"
!OleApplicationFrameworkBase class methodsFor: 'recovered'!
_PRAGMA_NlsCatOLE
    ^self
! !

"oleb.ic method 0x200000c0; bytecode file offset 0x7560"
!OleApplicationFrameworkBase class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"oleb.ic method 0x200000d4; bytecode file offset 0x7588"
!OleApplicationFrameworkBase class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := OleClientObject.
    (recoveredValue0) releaseTempStorage.
    ^self
! !

"oleb.ic method 0x200000e4; bytecode file offset 0x7588"
!OleApplicationFrameworkBase class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := OleClientObject.
    (recoveredValue0) clearRootStorage.
    ^self
! !

"oleb.ic method 0x200004a0; bytecode file offset 0x7948"
!OleApplicationFrameworkBase class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatOLE.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

