"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200019c4; bytecode file offset 0x24c64"
!EswMutationRequest methodsFor: 'recovered'!
originalClass
    | recoveredValue0 |
    recoveredValue0 := originalClass.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001ac0; bytecode file offset 0x24d00"
!EswMutationRequest methodsFor: 'recovered'!
newClass
    | recoveredValue0 |
    recoveredValue0 := newClass.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001b6c; bytecode file offset 0x24dac"
!EswMutationRequest methodsFor: 'recovered'!
instancesForMutation
    | recoveredValue0 |
    recoveredValue0 := instances.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002d80; bytecode file offset 0x25fb4"
!EswMutationRequest methodsFor: 'recovered'!
addInstanceForMutation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := instances.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x200037b0; bytecode file offset 0x269e0"
!EswMutationRequest methodsFor: 'recovered'!
originalClass: recoveredArg1 newClass: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    originalClass := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    newClass := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x2000484c; bytecode file offset 0x27a84"
!EswMutationRequest methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (1024).
    instances := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x2000a68c; bytecode file offset 0x2d8e0"
!EswMutationRequest methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := (self) originalClass.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPutAll: (' -> ').
    recoveredValue5 := (self) newClass.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPut: ($[).
    recoveredValue8 := (self) instancesForMutation.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) printOn: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPut: ($]).
    (recoveredValue11) nextPut: ($)).
    ^self
! !

