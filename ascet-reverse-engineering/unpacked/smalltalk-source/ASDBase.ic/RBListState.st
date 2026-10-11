"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006667c; bytecode file offset 0x963428"
!RBListState methodsFor: 'recovered'!
topPosition
    | recoveredValue0 |
    recoveredValue0 := topPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200679e4; bytecode file offset 0x9646f8"
!RBListState methodsFor: 'recovered'!
selectedPositions
    | recoveredValue0 |
    recoveredValue0 := selectedPositions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068894; bytecode file offset 0x965b90"
!RBListState methodsFor: 'recovered'!
expandedPositions
    | recoveredValue0 |
    recoveredValue0 := expandedPositions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be0fc; bytecode file offset 0x9bb178"
!RBListState methodsFor: 'recovered'!
topPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    topPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf578; bytecode file offset 0x9bc0b4"
!RBListState methodsFor: 'recovered'!
selectedPositions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedPositions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfef4; bytecode file offset 0x9bd228"
!RBListState methodsFor: 'recovered'!
expandedPositions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expandedPositions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2019183c; bytecode file offset 0xa8e100"
!RBListState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    topPosition := 1.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    selectedPositions := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    expandedPositions := recoveredValue3.
    ^self
! !

