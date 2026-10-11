"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200081f8; bytecode file offset 0x908be4"
!SGNWObject methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006638c; bytecode file offset 0x963428"
!SGNWObject methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be684; bytecode file offset 0x9bb178"
!SGNWObject methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5f04; bytecode file offset 0x9e27c4"
!SGNWObject methodsFor: 'recovered'!
initialize
    super initialize.
    name := ''.
    ^self
! !

"ASDBase.ic method 0x201951ec; bytecode file offset 0xa91abc"
!SGNWObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) name.
    recoveredValue3 := (' "') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    ^self
! !

