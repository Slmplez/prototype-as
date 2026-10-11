"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200038b0; bytecode file offset 0x4e82c"
!EsLocalStackVariable methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) frame.
    recoveredValue1 := (self) position.
    recoveredValue2 := (recoveredValue0) atOffset: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003f08; bytecode file offset 0x4eebc"
!EsLocalStackVariable methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := position.
    ^recoveredValue0
! !

"kernel.ic method 0x200047f0; bytecode file offset 0x4f794"
!EsLocalStackVariable methodsFor: 'recovered'!
isStackVariable
    ^false
! !

"kernel.ic method 0x200066e4; bytecode file offset 0x515fc"
!EsLocalStackVariable methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) frame.
    recoveredValue1 := (self) position.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) atOffset: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20007774; bytecode file offset 0x52760"
!EsLocalStackVariable methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    position := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000deb8; bytecode file offset 0x58de0"
!EsLocalStackVariable methodsFor: 'recovered'!
storeOn: recoveredArg1 frameReference: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (self) position.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := ('(%1 position: %2 in: %3)') bindWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5).
    (recoveredValue0) nextPutAll: (recoveredValue6).
    ^self
! !

