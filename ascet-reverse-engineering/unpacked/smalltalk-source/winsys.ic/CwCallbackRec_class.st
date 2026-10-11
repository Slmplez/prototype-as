"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20006a50; bytecode file offset 0x82c14"
!CwCallbackRec class methodsFor: 'recovered'!
receiver: recoveredArg1 selector: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) receiver: (recoveredValue0) selector: (recoveredValue1) clientData: (nil).
    ^recoveredValue2
! !

"winsys.ic method 0x20008b04; bytecode file offset 0x84cec"
!CwCallbackRec class methodsFor: 'recovered'!
receiver: recoveredArg1 selector: recoveredArg2 clientData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    ^recoveredValue4
! !

