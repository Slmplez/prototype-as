"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022e5c; bytecode file offset 0x92209c"
!EtasWinHelp class methodsFor: 'recovered'!
fileExtension
    ^'hlp'
! !

"ASDBase.ic method 0x20135044; bytecode file offset 0xa31910"
!EtasWinHelp class methodsFor: 'recovered'!
fileName: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) fileName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) osWidget.
    recoveredValue6 := (recoveredValue5) handle.
    (recoveredValue3) widgetHandle: (recoveredValue6).
    recoveredValue7 := (recoveredValue0) platformOpen.
    ^recoveredValue7
! !

