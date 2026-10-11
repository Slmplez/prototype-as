"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023888; bytecode file offset 0x92209c"
!AbtRunOleApp class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('OLE_instanceInterfaceSpec:')
! !

"ASDBase.ic method 0x2009b8ec; bytecode file offset 0x998260"
!AbtRunOleApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    recoveredValue0 := AbtRunInterfacesApp.
    (recoveredValue0) registerInterfaceSpecExtension: ('OLE_instanceInterfaceSpec:').
    ^self
! !

"ASDBase.ic method 0x2009b93c; bytecode file offset 0x998260"
!AbtRunOleApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := AbtRunInterfacesApp.
    (recoveredValue0) unregisterInterfaceSpecExtension: ('OLE_instanceInterfaceSpec:').
    ^self
! !

