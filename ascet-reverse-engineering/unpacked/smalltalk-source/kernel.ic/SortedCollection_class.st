"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002748; bytecode file offset 0x4d6ac"
!SortedCollection class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultSize.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200044e4; bytecode file offset 0x4f3f8"
!SortedCollection class methodsFor: 'recovered'!
sortBlock
    ^nil
! !

"kernel.ic method 0x200046e0; bytecode file offset 0x4f5ec"
!SortedCollection class methodsFor: 'recovered'!
defaultSize
    ^16
! !

"kernel.ic method 0x200066d0; bytecode file offset 0x515fc"
!SortedCollection class methodsFor: 'recovered'!
sortBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := (self) defaultSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) initialize: (recoveredValue1) sortBlock: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20006778; bytecode file offset 0x516a4"
!SortedCollection class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) sortBlock.
    recoveredValue3 := (recoveredValue0) initialize: (recoveredValue1) sortBlock: (recoveredValue2).
    ^recoveredValue3
! !

