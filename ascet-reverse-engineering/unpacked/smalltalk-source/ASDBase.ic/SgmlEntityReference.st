"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028754; bytecode file offset 0x934580"
!SgmlEntityReference methodsFor: 'recovered'!
isSeparator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) isSeparator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006853c; bytecode file offset 0x965b90"
!SgmlEntityReference methodsFor: 'recovered'!
explicit
    | recoveredValue0 |
    recoveredValue0 := explicit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007532c; bytecode file offset 0x9757c8"
!SgmlEntityReference methodsFor: 'recovered'!
isSgmlEntityReference
    ^true
! !

"ASDBase.ic method 0x20097764; bytecode file offset 0x995850"
!SgmlEntityReference methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c014c; bytecode file offset 0x9bd228"
!SgmlEntityReference methodsFor: 'recovered'!
explicit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    explicit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e63e8; bytecode file offset 0x9e2ce4"
!SgmlEntityReference methodsFor: 'recovered'!
initialize
    super initialize.
    (self) explicit: (true).
    ^self
! !

