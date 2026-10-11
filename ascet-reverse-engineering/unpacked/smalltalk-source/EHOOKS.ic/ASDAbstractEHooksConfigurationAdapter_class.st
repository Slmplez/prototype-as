"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x200014e4; bytecode file offset 0x10628"
!ASDAbstractEHooksConfigurationAdapter class methodsFor: 'recovered'!
createWithConfigBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) notNil.
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('ehooks config is missing').
    recoveredValue2 := (self) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) eHooksConfigBlock: (recoveredValue5).
    ^recoveredValue2
! !

