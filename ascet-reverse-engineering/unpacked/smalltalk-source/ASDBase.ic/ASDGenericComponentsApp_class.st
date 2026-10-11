"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000aa0; bytecode file offset 0x8ffcfc"
!ASDGenericComponentsApp class methodsFor: 'recovered'!
_PRAGMA_ASDGenericComponentConstants
    ^self
! !

"ASDBase.ic method 0x20139a64; bytecode file offset 0xa3632c"
!ASDGenericComponentsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDGenericComponentFactory.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    (recoveredValue0) registeredGenericComponentList: (recoveredValue2).
    recoveredValue3 := ASDGenericComponentFactory.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) ExternalEditorProcesses: (recoveredValue5).
    ^self
! !

