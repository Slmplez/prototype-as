"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20036f94; bytecode file offset 0x934580"
!TGAccessElement methodsFor: 'recovered'!
getSemaphore
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) server.
    recoveredValue1 := (recoveredValue0) getSemaphore.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066ac4; bytecode file offset 0x963428"
!TGAccessElement methodsFor: 'recovered'!
oidNumber
    | recoveredValue0 |
    recoveredValue0 := oidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066dbc; bytecode file offset 0x9646f8"
!TGAccessElement methodsFor: 'recovered'!
pidNumber
    | recoveredValue0 |
    recoveredValue0 := pidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200686f4; bytecode file offset 0x965b90"
!TGAccessElement methodsFor: 'recovered'!
server
    | recoveredValue0 |
    recoveredValue0 := server.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be124; bytecode file offset 0x9bb178"
!TGAccessElement methodsFor: 'recovered'!
oidNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oidNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf358; bytecode file offset 0x9bc0b4"
!TGAccessElement methodsFor: 'recovered'!
pidNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pidNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0964; bytecode file offset 0x9bd228"
!TGAccessElement methodsFor: 'recovered'!
server: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    server := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2023edd8; bytecode file offset 0xb3b6ac"
!TGAccessElement methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := pidNumber.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := ('pidNumber: ') , (recoveredValue4).
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := oidNumber.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('oidNumber: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    ^recoveredValue10
! !

