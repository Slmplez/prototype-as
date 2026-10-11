"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200086d8; bytecode file offset 0x908be4"
!AMLByteArray methodsFor: 'recovered'!
isValidMemoryLayoutIfData
    | recoveredValue0 |
    recoveredValue0 := (self) notEmpty.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009854; bytecode file offset 0x908be4"
!AMLByteArray methodsFor: 'recovered'!
isValid
    | recoveredValue0 |
    recoveredValue0 := (self) notEmpty.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e879c; bytecode file offset 0x9e5084"
!AMLByteArray methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    (recoveredValue1) emWriteClass: (recoveredValue2).
    (recoveredValue0) writeByteArray: (self).
    ^self
! !

