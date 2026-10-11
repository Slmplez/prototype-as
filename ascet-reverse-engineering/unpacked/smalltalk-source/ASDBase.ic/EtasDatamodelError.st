"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004a0cc; bytecode file offset 0x947128"
!EtasDatamodelError methodsFor: 'recovered'!
errorMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorNumber.
    recoveredValue1 := (self) errorForCode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c330c; bytecode file offset 0x9bfde0"
!EtasDatamodelError methodsFor: 'recovered'!
errorCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c39b8; bytecode file offset 0x9c058c"
!EtasDatamodelError methodsFor: 'recovered'!
errorObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa8d4; bytecode file offset 0x9f71d0"
!EtasDatamodelError methodsFor: 'recovered'!
initialize
    super initialize.
    (self) errorCode: (0).
    ^self
! !

"ASDBase.ic method 0x201657b0; bytecode file offset 0xa62074"
!EtasDatamodelError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('API-Error: "').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) errorMessage.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue1) nextPut: ($").
    ^self
! !

"ASDBase.ic method 0x2017820c; bytecode file offset 0xa74ad0"
!EtasDatamodelError methodsFor: 'recovered'!
errorForCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) CodeErrorTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    ^'unknown API error'
].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

