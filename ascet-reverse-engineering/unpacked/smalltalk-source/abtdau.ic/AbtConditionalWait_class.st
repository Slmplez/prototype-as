"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000038; bytecode file offset 0xf3ec"
!AbtConditionalWait class methodsFor: 'recovered'!
classComment
    ^self
! !

"abtdau.ic method 0x20001904; bytecode file offset 0x10c80"
!AbtConditionalWait class methodsFor: 'recovered'!
until: recoveredArg1 ifTimeoutDo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) conditionBlock: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) timeoutBlock: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) setDefaultWaitValues.
    ^recoveredValue0
! !

