"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002f1c; bytecode file offset 0x64108"
!SstWSSoapEnvelopeGenerationHandler methodsFor: 'recovered'!
envelopeUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) envelopeFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUsing: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003bdc; bytecode file offset 0x64d78"
!SstWSSoapEnvelopeGenerationHandler methodsFor: 'recovered'!
envelopeFactory
    | recoveredValue0 |
    recoveredValue0 := envelopeFactory.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006d60; bytecode file offset 0x67e2c"
!SstWSSoapEnvelopeGenerationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) envelopeUsing: (recoveredValue1).
    (recoveredValue0) currentMessage: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2000816c; bytecode file offset 0x692b8"
!SstWSSoapEnvelopeGenerationHandler methodsFor: 'recovered'!
envelopeFactory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    envelopeFactory := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a330; bytecode file offset 0x6b404"
!SstWSSoapEnvelopeGenerationHandler methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := SstSoapEnvelope.
    (self) envelopeFactory: (recoveredValue0).
    ^self
! !

