"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ole.ic method 0x200004c8; bytecode file offset 0xae1c"
!CwWidget methodsFor: 'recovered'!
isOleClient
    ^false
! !

"ole.ic method 0x200004d0; bytecode file offset 0xae1c"
!CwWidget methodsFor: 'recovered'!
isOleControl
    ^false
! !

"ole.ic method 0x200007bc; bytecode file offset 0xb120"
!CwWidget methodsFor: 'recovered'!
createOleControl: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OleControl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ole.ic method 0x200007cc; bytecode file offset 0xb120"
!CwWidget methodsFor: 'recovered'!
createOleClient: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OleClient.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ole.ic method 0x200007dc; bytecode file offset 0xb120"
!CwWidget methodsFor: 'recovered'!
createOleMainWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OleMainWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

