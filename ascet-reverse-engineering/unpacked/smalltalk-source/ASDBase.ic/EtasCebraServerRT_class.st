"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002d50; bytecode file offset 0x8ffcfc"
!EtasCebraServerRT class methodsFor: 'recovered'!
_PRAGMA_EtasCebraServerRTNlsPool
    ^self
! !

"ASDBase.ic method 0x2004e1c8; bytecode file offset 0x94d048"
!EtasCebraServerRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x200503b8; bytecode file offset 0x94d048"
!EtasCebraServerRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x20139e98; bytecode file offset 0xa3675c"
!EtasCebraServerRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Fassade.
    (recoveredValue0) unregisterOnErrorManager.
    recoveredValue1 := Fassade.
    (recoveredValue1) catchWalkback: (nil).
    recoveredValue2 := Fassade.
    (recoveredValue2) MethodCalls: (nil).
    ^self
! !

