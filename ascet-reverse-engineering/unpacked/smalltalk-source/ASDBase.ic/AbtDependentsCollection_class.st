"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200727d0; bytecode file offset 0x96f1c4"
!AbtDependentsCollection class methodsFor: 'recovered'!
defaultSize
    ^2
! !

"ASDBase.ic method 0x20096b50; bytecode file offset 0x9937fc"
!AbtDependentsCollection class methodsFor: 'recovered'!
forEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) event: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac250; bytecode file offset 0x9a8bc4"
!AbtDependentsCollection class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b71d0; bytecode file offset 0x9b3adc"
!AbtDependentsCollection class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := (self) defaultSize.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20123344; bytecode file offset 0xa1fc08"
!AbtDependentsCollection class methodsFor: 'recovered'!
forEvent: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) initialize: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) event: (recoveredValue4).
    ^recoveredValue0
! !

