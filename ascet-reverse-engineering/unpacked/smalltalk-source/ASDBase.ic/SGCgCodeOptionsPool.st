"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20092520; bytecode file offset 0x98ef64"
!SGCgCodeOptionsPool methodsFor: 'recovered'!
addOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := allOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200f9cc4; bytecode file offset 0x9f6678"
!SGCgCodeOptionsPool methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    allOptions := recoveredValue1.
    ^self
! !

