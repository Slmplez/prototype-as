"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007132c; bytecode file offset 0x96dc00"
!WbAbstractPrimitive methodsFor: 'recovered'!
extendedCallbacks
    | recoveredValue0 |
    recoveredValue0 := callbacks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c789c; bytecode file offset 0x9c4150"
!WbAbstractPrimitive methodsFor: 'recovered'!
extendedCallbacks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    callbacks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa58c; bytecode file offset 0x9f6e50"
!WbAbstractPrimitive methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    callbacks := recoveredValue1.
    ^self
! !

