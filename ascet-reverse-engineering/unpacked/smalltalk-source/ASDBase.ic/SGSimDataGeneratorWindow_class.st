"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007047c; bytecode file offset 0x96ce40"
!SGSimDataGeneratorWindow class methodsFor: 'recovered'!
lastSelectedSignalFolder
    | recoveredValue0 |
    recoveredValue0 := lastSelectedSignalFolder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6ae4; bytecode file offset 0x9c3470"
!SGSimDataGeneratorWindow class methodsFor: 'recovered'!
lastSelectedSignalFolder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastSelectedSignalFolder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012706c; bytecode file offset 0xa23948"
!SGSimDataGeneratorWindow class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := SGSimDataGeneratorC.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) create: (recoveredValue3) mainController: (recoveredValue4).
    (recoveredValue1) uiController: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

