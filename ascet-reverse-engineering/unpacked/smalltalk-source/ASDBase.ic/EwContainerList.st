"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200de1f8; bytecode file offset 0x9daabc"
!EwContainerList methodsFor: 'recovered'!
getHoverInfoFor: recoveredArg1 position: recoveredArg2 point: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) getVisualInfoFor: (recoveredValue0) position: (recoveredValue1).
    recoveredValue2 := (self) visualInfoCalldata.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := (recoveredValue3) getHoverInfo.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20123dec; bytecode file offset 0xa206c8"
!EwContainerList methodsFor: 'recovered'!
horizontalScroll: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osWidget.
    (recoveredValue0) setFocus.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super horizontalScroll: (recoveredValue1) clientData: (recoveredValue2) callData: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20123e04; bytecode file offset 0xa206c8"
!EwContainerList methodsFor: 'recovered'!
verticalScroll: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osWidget.
    (recoveredValue0) setFocus.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super verticalScroll: (recoveredValue1) clientData: (recoveredValue2) callData: (recoveredValue3).
    ^self
! !

