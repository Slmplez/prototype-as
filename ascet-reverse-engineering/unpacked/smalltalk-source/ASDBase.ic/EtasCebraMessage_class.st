"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d314; bytecode file offset 0x934580"
!EtasCebraMessage class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014b130; bytecode file offset 0xa479f8"
!EtasCebraMessage class methodsFor: 'recovered'!
errorMessage: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ErrorHandle.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) fill: (recoveredValue3) with: (recoveredValue4).
    recoveredValue5 := (self) new.
    recoveredValue6 := (recoveredValue5) initialize.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) catItem: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201de5c4; bytecode file offset 0xadae94"
!EtasCebraMessage class methodsFor: 'recovered'!
quitMessage
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeWithIdentifier.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ControlSequence.
    recoveredValue5 := (recoveredValue4) create: ('Q').
    (recoveredValue3) catItem: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) catItem: ('quit').
    (recoveredValue2) catItem: (0).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

