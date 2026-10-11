"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e810; bytecode file offset 0x94d048"
!TGAccessElement class methodsFor: 'recovered'!
pid
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20101874; bytecode file offset 0x9fe138"
!TGAccessElement class methodsFor: 'recovered'!
createWithOID: recoveredArg1 pid: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) oidNumber: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) pidNumber: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113d04; bytecode file offset 0xa105c4"
!TGAccessElement class methodsFor: 'recovered'!
createWithOID: recoveredArg1 server: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) pid.
    recoveredValue2 := (self) createWithOID: (recoveredValue0) pid: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) server: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

