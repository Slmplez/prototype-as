"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002798; bytecode file offset 0x4d6ac"
!OrderedCollection class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultSize.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002fc4; bytecode file offset 0x4dff8"
!OrderedCollection class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000451c; bytecode file offset 0x4f428"
!OrderedCollection class methodsFor: 'recovered'!
defaultSize
    ^8
! !

