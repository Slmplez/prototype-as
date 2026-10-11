"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200039f0; bytecode file offset 0x7fbb0"
!CwKeyEvent methodsFor: 'recovered'!
keycode
    | recoveredValue0 |
    recoveredValue0 := keycode.
    ^recoveredValue0
! !

"winsys.ic method 0x20003ab8; bytecode file offset 0x7fc78"
!CwKeyEvent methodsFor: 'recovered'!
character
    | recoveredValue0 |
    recoveredValue0 := character.
    ^recoveredValue0
! !

"winsys.ic method 0x20007e28; bytecode file offset 0x84048"
!CwKeyEvent methodsFor: 'recovered'!
keycode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keycode := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007efc; bytecode file offset 0x840d4"
!CwKeyEvent methodsFor: 'recovered'!
character: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    character := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200148fc; bytecode file offset 0x90ad8"
!CwKeyEvent methodsFor: 'recovered'!
keysym
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := display.
    recoveredValue1 := (self) keycode.
    recoveredValue2 := (self) state.
    recoveredValue3 := ReturnParameter.
    recoveredValue4 := (recoveredValue3) null.
    recoveredValue5 := ReturnParameter.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredValue6.
    recoveredLocal1 := recoveredValue7.
    (recoveredValue0) translateKeycode: (recoveredValue1) modifiers: (recoveredValue2) modifiersReturn: (recoveredValue4) keysymReturn: (recoveredValue6).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) value.
    ^recoveredValue9
! !

"winsys.ic method 0x2001fbd8; bytecode file offset 0x9bdc4"
!CwKeyEvent methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) keycode.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (' keycode=') , (recoveredValue4).
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) keysym.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (' keysym=') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := (self) character.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (' character=') , (recoveredValue11).
    (recoveredValue1) nextPutAll: (recoveredValue12).
    ^self
! !

