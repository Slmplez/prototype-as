"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200137e8; bytecode file offset 0x912098"
!EtasEHooksOleObjectWrapperApplication class methodsFor: 'recovered'!
clientName
    | recoveredValue0 |
    recoveredValue0 := ClientName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054068; bytecode file offset 0x951190"
!EtasEHooksOleObjectWrapperApplication class methodsFor: 'recovered'!
clientName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ClientName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20095a98; bytecode file offset 0x9923a4"
!EtasEHooksOleObjectWrapperApplication class methodsFor: 'recovered'!
createObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) clientName: (recoveredValue0).
    recoveredValue1 := (self) createObject.
    ^recoveredValue1
! !

