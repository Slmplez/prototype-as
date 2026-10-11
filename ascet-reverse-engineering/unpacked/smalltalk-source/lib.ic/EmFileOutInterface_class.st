"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20003664; bytecode file offset 0x3f69c"
!EmFileOutInterface class methodsFor: 'recovered'!
privateForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) forClass: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) forPrivateMethods.
    ^recoveredValue1
! !

"lib.ic method 0x20003674; bytecode file offset 0x3f69c"
!EmFileOutInterface class methodsFor: 'recovered'!
publicForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) forClass: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) forPublicMethods.
    ^recoveredValue1
! !

"lib.ic method 0x200036f8; bytecode file offset 0x3f720"
!EmFileOutInterface class methodsFor: 'recovered'!
forClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setClass: (recoveredValue2).
    ^recoveredValue0
! !

"lib.ic method 0x20007ed4; bytecode file offset 0x43f04"
!EmFileOutInterface class methodsFor: 'recovered'!
fileInSourceFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsCompiler.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) new.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) fileInSourceFrom: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) useWarningLevel0While: (recoveredValue1).
    ^recoveredValue2
! !

