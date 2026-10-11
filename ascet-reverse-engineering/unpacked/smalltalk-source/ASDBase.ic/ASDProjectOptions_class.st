"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006fb50; bytecode file offset 0x96c42c"
!ASDProjectOptions class methodsFor: 'recovered'!
hookedProjectOptionsCallback
    | recoveredValue0 |
    recoveredValue0 := hookedProjectOptionsCallback.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aad14; bytecode file offset 0x9a7610"
!ASDProjectOptions class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) project: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) initialize.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c6004; bytecode file offset 0x9c29e8"
!ASDProjectOptions class methodsFor: 'recovered'!
hookedProjectOptionsCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hookedProjectOptionsCallback := recoveredValue0.
    ^self
! !

