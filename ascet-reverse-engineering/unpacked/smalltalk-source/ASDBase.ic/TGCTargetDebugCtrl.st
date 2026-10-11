"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200316e4; bytecode file offset 0x934580"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
getTargetDebuggerConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) getTargetDebuggerConfig.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004103c; bytecode file offset 0x93dd2c"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
readString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := access.
    recoveredValue1 := (recoveredValue0) readString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d7e0; bytecode file offset 0x95a098"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
testRunning
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := access.
    recoveredValue1 := (recoveredValue0) server.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069a68; bytecode file offset 0x966bdc"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
running
    | recoveredValue0 |
    recoveredValue0 := running.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af44; bytecode file offset 0x967a18"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
measureSystemCtrl
    | recoveredValue0 |
    recoveredValue0 := measureSystemCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ee34; bytecode file offset 0x98b700"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
shutDown
    | recoveredValue0 |
    recoveredValue0 := (self) measureSystemCtrl.
    (recoveredValue0) targetDebuggerCtrl: (nil).
    ^self
! !

"ASDBase.ic method 0x200c018c; bytecode file offset 0x9bd228"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
access: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    access := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0bb0; bytecode file offset 0x9bdf14"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
running: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    running := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21f4; bytecode file offset 0x9beac8"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
measureSystemCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureSystemCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012b928; bytecode file offset 0xa281e4"
!TGCTargetDebugCtrl methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    running := false.
    recoveredValue0 := TGAccessCTargetDebug.
    recoveredValue1 := (recoveredValue0) createWithOID: (3) pid: (0).
    access := recoveredValue1.
    ^self
! !

