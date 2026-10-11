"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200004c4; bytecode file offset 0x18d4c"
!SgmlDTD class methodsFor: 'recovered'!
dtds
    | recoveredValue0 |
    recoveredValue0 := DTDs.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200007a4; bytecode file offset 0x18fa4"
!SgmlDTD class methodsFor: 'recovered'!
registeredDTDs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20000a0c; bytecode file offset 0x191f8"
!SgmlDTD class methodsFor: 'recovered'!
dtds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DTDs := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20001c44; bytecode file offset 0x1a438"
!SgmlDTD class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    (self) dtds: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20001ea8; bytecode file offset 0x1a7a0"
!SgmlDTD class methodsFor: 'recovered'!
registeredDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20002260; bytecode file offset 0x1aa54"
!SgmlDTD class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200023dc; bytecode file offset 0x1abd4"
!SgmlDTD class methodsFor: 'recovered'!
deregisterDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) owner.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue0) removeKey: (recoveredValue3).
    ^self
! !

"abtxmlp.ic method 0x20002ae8; bytecode file offset 0x1b2f8"
!SgmlDTD class methodsFor: 'recovered'!
registerDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) owner.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"abtxmlp.ic method 0x20002dc0; bytecode file offset 0x1b5dc"
!SgmlDTD class methodsFor: 'recovered'!
name: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) owner: (recoveredValue4).
    ^recoveredValue0
! !

