"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e6b0c; bytecode file offset 0x9e33cc"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
abtValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) value: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) convertToDisplay.
    (self) labelString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ffd58; bytecode file offset 0x9fc618"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
abtValue: recoveredArg1 converter: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) value: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) objectToDisplay: (true).
    (self) labelString: (recoveredValue2).
    ^self
! !

