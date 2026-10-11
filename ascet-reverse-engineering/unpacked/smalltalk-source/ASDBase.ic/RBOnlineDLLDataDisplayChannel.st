"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200664fc; bytecode file offset 0x963428"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
windowId
    | recoveredValue0 |
    recoveredValue0 := winId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066d3c; bytecode file offset 0x9646f8"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
displayChannelId
    | recoveredValue0 |
    recoveredValue0 := displayChannelId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068914; bytecode file offset 0x965b90"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
bitPosition
    | recoveredValue0 |
    recoveredValue0 := bitPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be4d4; bytecode file offset 0x9bb178"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
windowId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    winId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beea0; bytecode file offset 0x9bc0b4"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
displayChannelId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayChannelId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0484; bytecode file offset 0x9bd228"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
bitPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fd1a0; bytecode file offset 0x9f9a64"
!RBOnlineDLLDataDisplayChannel methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := displayChannelId.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (' ') , (recoveredValue2).
    (recoveredValue0) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

