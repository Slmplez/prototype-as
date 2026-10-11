"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003f910; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isLeftButtonDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkLbutton.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f950; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isAltKeyDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkMenu.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fa00; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isRightButtonDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkRbutton.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fab0; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isCapsKeyDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkCapital.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003faf0; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isShiftKeyDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkShift.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fb50; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isControlKeyDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkControl.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fd10; bytecode file offset 0x93c75c"
!WbKeyState class methodsFor: 'recovered'!
isMiddleButtonDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VkMbutton.
    recoveredValue1 := (self) isKeyDown: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7ce8; bytecode file offset 0x9b45a4"
!WbKeyState class methodsFor: 'recovered'!
isKeyDown: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OS.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getAsyncKeyState: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) < (0).
    ^recoveredValue3
! !

