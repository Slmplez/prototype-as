"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200007b4; bytecode file offset 0x18fa4"
!SgmlEntityReference methodsFor: 'recovered'!
isSeparator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) isSeparator.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20000e34; bytecode file offset 0x1967c"
!SgmlEntityReference methodsFor: 'recovered'!
explicit
    | recoveredValue0 |
    recoveredValue0 := explicit.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200011ec; bytecode file offset 0x19a94"
!SgmlEntityReference methodsFor: 'recovered'!
isSgmlEntityReference
    ^true
! !

"abtxmlp.ic method 0x20001a8c; bytecode file offset 0x1a2ec"
!SgmlEntityReference methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20002554; bytecode file offset 0x1ad9c"
!SgmlEntityReference methodsFor: 'recovered'!
explicit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    explicit := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002c8c; bytecode file offset 0x1b480"
!SgmlEntityReference methodsFor: 'recovered'!
initialize
    super initialize.
    (self) explicit: (true).
    ^self
! !

