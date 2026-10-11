"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000b60; bytecode file offset 0x8ffcfc"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
_PRAGMA_AbtMsgPrimBase
    ^self
! !

"ASDBase.ic method 0x2004de44; bytecode file offset 0x94d048"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x200cd2e8; bytecode file offset 0x9c9bb0"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) stringMapper.
    (recoveredValue2) unregisterMapping: ('abtva?40').
    ^self
! !

"ASDBase.ic method 0x200e029c; bytecode file offset 0x9dcbc0"
!AbtPrimitiveBaseApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtpb?40') with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014cb08; bytecode file offset 0xa493dc"
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

