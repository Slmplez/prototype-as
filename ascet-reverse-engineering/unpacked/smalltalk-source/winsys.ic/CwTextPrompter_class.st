"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20005844; bytecode file offset 0x81a0c"
!CwTextPrompter class methodsFor: 'recovered'!
prompt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) prompt: (recoveredValue0) answer: ('').
    ^recoveredValue1
! !

"winsys.ic method 0x2000e0c4; bytecode file offset 0x8a29c"
!CwTextPrompter class methodsFor: 'recovered'!
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
    (recoveredValue5) answerString: (recoveredValue6).
    recoveredValue7 := (recoveredValue2) prompt.
    ^recoveredValue7
! !

