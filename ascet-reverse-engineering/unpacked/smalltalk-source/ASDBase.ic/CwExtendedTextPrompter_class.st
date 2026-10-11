"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2014716c; bytecode file offset 0xa43a38"
!CwExtendedTextPrompter class methodsFor: 'recovered'!
prompt: recoveredArg1 answer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) messageString: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) result: (recoveredValue6).
    recoveredValue7 := (recoveredValue2) promptWithEtasFonts.
    ^recoveredValue7
! !

