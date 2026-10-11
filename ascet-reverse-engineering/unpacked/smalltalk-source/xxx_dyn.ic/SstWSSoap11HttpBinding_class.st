"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000fd4; bytecode file offset 0x6209c"
!SstWSSoap11HttpBinding class methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 |
    recoveredValue0 := SstSoapDefaultEnvelopeNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005480; bytecode file offset 0x6655c"
!SstWSSoap11HttpBinding class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredValue0 |
    recoveredValue0 := (self) abtXmlCacheKey.
    (self) unregister: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20007560; bytecode file offset 0x68630"
!SstWSSoap11HttpBinding class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (self) abtXmlCacheKey.
    (self) register: (recoveredValue0) as: (recoveredValue1).
    ^self
! !

