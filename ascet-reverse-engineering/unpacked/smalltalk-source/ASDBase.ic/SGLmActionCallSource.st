"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054918; bytecode file offset 0x952a9c"
!SGLmActionCallSource methodsFor: 'recovered'!
visibleErrorInCtrl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) visibleActionCallError: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e304; bytecode file offset 0x96af48"
!SGLmActionCallSource methodsFor: 'recovered'!
methodName
    | recoveredValue0 |
    recoveredValue0 := methodName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071954; bytecode file offset 0x96e578"
!SGLmActionCallSource methodsFor: 'recovered'!
line
    ^0
! !

"ASDBase.ic method 0x200c4cac; bytecode file offset 0x9c16b0"
!SGLmActionCallSource methodsFor: 'recovered'!
methodName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201b8b3c; bytecode file offset 0xab540c"
!SGLmActionCallSource methodsFor: 'recovered'!
display
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super display.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := ('hw') == ('call_84043').
    recoveredValue2 := (recoveredValue1) == ('call_82008').
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) lastNavigationObjectObject.
    (recoveredValue4) editStateInfoShowError: (self).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

