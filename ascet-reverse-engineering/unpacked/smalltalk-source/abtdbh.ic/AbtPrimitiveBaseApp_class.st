"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000020; bytecode file offset 0x11ba8"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
_PRAGMA_AbtMsgPrimBase
    ^self
! !

"abtdbh.ic method 0x20000684; bytecode file offset 0x12194"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"abtdbh.ic method 0x20001a20; bytecode file offset 0x13504"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) stringMapper.
    (recoveredValue2) unregisterMapping: ('abtva?40').
    ^self
! !

"abtdbh.ic method 0x20001cc4; bytecode file offset 0x137b4"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ExceptionalEvent.
    recoveredValue1 := (recoveredValue0) with: ('abtpb?40') with: (false) with: (true).
    ^recoveredValue1
! !

"abtdbh.ic method 0x20002390; bytecode file offset 0x13e80"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) stringMapper.
    (recoveredValue2) registerMapping: ('abtva?40').
    recoveredValue3 := AbtNlsKernelApp.
    recoveredValue4 := (recoveredValue3) pendingNlsRegistrations.
    (recoveredValue4) add: (self).
    ^self
! !

