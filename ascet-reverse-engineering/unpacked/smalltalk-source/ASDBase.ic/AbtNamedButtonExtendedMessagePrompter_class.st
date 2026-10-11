"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200decf4; bytecode file offset 0x9db5c4"
!AbtNamedButtonExtendedMessagePrompter class methodsFor: 'recovered'!
message: recoveredArg1 title: recoveredArg2 iconType: recoveredArg3 buttonNames: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) message: (recoveredValue0) title: (recoveredValue1) iconType: (recoveredValue2) buttonNames: (recoveredValue3) helpBlock: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202164c0; bytecode file offset 0xb12d90"
!AbtNamedButtonExtendedMessagePrompter class methodsFor: 'recovered'!
message: recoveredArg1 title: recoveredArg2 iconType: recoveredArg3 buttonNames: recoveredArg4 helpBlock: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) abtMessageString: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) abtTitle: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) abtIconType: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) abtButtonNames: (recoveredValue9).
    recoveredValue10 := recoveredArg5.
    (recoveredValue0) abtHelpBlock: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) prompt.
    ^recoveredValue12
! !

