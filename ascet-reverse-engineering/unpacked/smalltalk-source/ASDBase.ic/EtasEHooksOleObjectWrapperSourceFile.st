"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20093424; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperSourceFile methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Path') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009d9d4; bytecode file offset 0x99a2e4"
!EtasEHooksOleObjectWrapperSourceFile methodsFor: 'recovered'!
setLibraryType
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Type') put: ('Library').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1758; bytecode file offset 0x9ce734"
!EtasEHooksOleObjectWrapperSourceFile methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Type') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1848; bytecode file offset 0x9ce734"
!EtasEHooksOleObjectWrapperSourceFile methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Path') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

