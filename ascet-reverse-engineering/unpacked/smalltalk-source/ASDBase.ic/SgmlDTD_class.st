"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013b18; bytecode file offset 0x912098"
!SgmlDTD class methodsFor: 'recovered'!
dtds
    | recoveredValue0 |
    recoveredValue0 := DTDs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20036534; bytecode file offset 0x934580"
!SgmlDTD class methodsFor: 'recovered'!
registeredDTDs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200547ac; bytecode file offset 0x951190"
!SgmlDTD class methodsFor: 'recovered'!
dtds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DTDs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2009cc00; bytecode file offset 0x999628"
!SgmlDTD class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) dtds: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ab8f0; bytecode file offset 0x9a8250"
!SgmlDTD class methodsFor: 'recovered'!
registeredDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b5974; bytecode file offset 0x9b2324"
!SgmlDTD class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bd624; bytecode file offset 0x9b9f90"
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

"ASDBase.ic method 0x200daa38; bytecode file offset 0x9d72fc"
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

"ASDBase.ic method 0x200ec034; bytecode file offset 0x9e8afc"
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

