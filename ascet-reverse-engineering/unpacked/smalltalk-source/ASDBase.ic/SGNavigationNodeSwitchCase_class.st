"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20083960; bytecode file offset 0x980230"
!SGNavigationNodeSwitchCase class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createFor: (recoveredValue0) literal: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113dd8; bytecode file offset 0xa10698"
!SGNavigationNodeSwitchCase class methodsFor: 'recovered'!
createFor: recoveredArg1 literal: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createFor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) literal: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

