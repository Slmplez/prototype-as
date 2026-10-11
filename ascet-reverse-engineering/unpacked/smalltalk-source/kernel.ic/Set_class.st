"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002880; bytecode file offset 0x4d79c"
!Set class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) new: (0).
    ^recoveredValue0
! !

"kernel.ic method 0x20004544; bytecode file offset 0x4f468"
!Set class methodsFor: 'recovered'!
minimumSize
    ^11
! !

"kernel.ic method 0x20008824; bytecode file offset 0x53788"
!Set class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (self) minimumSize.
    recoveredValue5 := (recoveredValue3) max: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) initialize: (recoveredValue5).
    ^recoveredValue6
! !

