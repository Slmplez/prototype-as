"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005be44; bytecode file offset 0x958ab0"
!SGCodeManagerView class methodsFor: 'recovered'!
shutdown
    | recoveredValue0 |
    recoveredValue0 := SGCodeManager.
    (recoveredValue0) shutdown.
    ^self
! !

"ASDBase.ic method 0x2005c1d4; bytecode file offset 0x958ab0"
!SGCodeManagerView class methodsFor: 'recovered'!
startup
    | recoveredValue0 |
    recoveredValue0 := SGCodeManager.
    (recoveredValue0) startup.
    ^self
! !

"ASDBase.ic method 0x2008c57c; bytecode file offset 0x989498"
!SGCodeManagerView class methodsFor: 'recovered'!
broadcastIdle
    (self) broadcast: ('codeManagerIdle').
    ^self
! !

"ASDBase.ic method 0x2008c83c; bytecode file offset 0x989498"
!SGCodeManagerView class methodsFor: 'recovered'!
broadcastBusy
    (self) broadcast: ('codeManagerBusy').
    ^self
! !

"ASDBase.ic method 0x200abf74; bytecode file offset 0x9a894c"
!SGCodeManagerView class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue1
! !

