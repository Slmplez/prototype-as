"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20049134; bytecode file offset 0x9459f8"
!WbAbstractPrimitive class methodsFor: 'recovered'!
clearExtendedCallbacks
    extendedCallbacks := nil.
    ^self
! !

"ASDBase.ic method 0x2013bc28; bytecode file offset 0xa384e4"
!WbAbstractPrimitive class methodsFor: 'recovered'!
extendedCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := extendedCallbacks.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) initializeExtendedCallbacks.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    extendedCallbacks := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

