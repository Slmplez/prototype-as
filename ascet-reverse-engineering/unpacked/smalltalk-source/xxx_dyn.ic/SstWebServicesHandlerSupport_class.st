"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20005e60; bytecode file offset 0x66f2c"
!SstWebServicesHandlerSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000b1f0; bytecode file offset 0x6c2c4"
!SstWebServicesHandlerSupport class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstWSHandlerFactory.
    (recoveredValue0) reset.
    recoveredValue1 := SstWSSoapMessageValidator.
    (recoveredValue1) reset.
    recoveredValue2 := SstWSNoOperationHandler.
    (recoveredValue2) reset.
    ^self
! !

