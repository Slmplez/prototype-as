"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20148320; bytecode file offset 0xa44c04"
!EtasTextInputDialog methodsFor: 'recovered'!
button1Activate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) contentsText.
    recoveredValue1 := (recoveredValue0) value.
    (self) contentsString: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super button1Activate: (recoveredValue2) clientData: (recoveredValue3) callData: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014833c; bytecode file offset 0xa44c04"
!EtasTextInputDialog methodsFor: 'recovered'!
buttonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) contentsText.
    recoveredValue1 := (recoveredValue0) value.
    (self) contentsString: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super buttonActivate: (recoveredValue2) clientData: (recoveredValue3) callData: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201628e4; bytecode file offset 0xa5f1b0"
!EtasTextInputDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeAfterOpen.
    recoveredValue0 := (self) contentsText.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) contentsText.
    recoveredValue3 := (recoveredValue2) getLastPosition.
    (recoveredValue0) cursorPosition: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e4e18; bytecode file offset 0xae16f4"
!EtasTextInputDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeAfterCreate.
    recoveredValue0 := (self) contentsText.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) white.
    (recoveredValue1) backgroundColor: (recoveredValue3).
    (recoveredValue0) editable: (true).
    (self) iconSmall: ('GeneralHelp') large: ('GeneralHelp32').
    ^self
! !

