"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000ec0; bytecode file offset 0x6209c"
!SstSoapFault class methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 |
    recoveredValue0 := SstSoapDefaultEnvelopeNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002be4; bytecode file offset 0x63cb8"
!SstSoapFault class methodsFor: 'recovered'!
registry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Registry := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20003378; bytecode file offset 0x64464"
!SstSoapFault class methodsFor: 'recovered'!
cleanUpBeforeRemove
    (self) registry: (nil).
    ^self
! !

"xxx_dyn.ic method 0x20005b70; bytecode file offset 0x66c40"
!SstSoapFault class methodsFor: 'recovered'!
versionMismatchFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) abtXmlCacheKey.
    recoveredValue1 := (self) lookup: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) versionMismatchFault: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20005cac; bytecode file offset 0x66d78"
!SstSoapFault class methodsFor: 'recovered'!
lookup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) lookup: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005eec; bytecode file offset 0x66fe4"
!SstSoapFault class methodsFor: 'recovered'!
serverFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) faultURI.
    recoveredValue2 := (self) lookup: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) serverFault: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20005f00; bytecode file offset 0x66fe4"
!SstSoapFault class methodsFor: 'recovered'!
clientFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) faultURI.
    recoveredValue2 := (self) lookup: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) clientFault: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20005f14; bytecode file offset 0x66fe4"
!SstSoapFault class methodsFor: 'recovered'!
mustUnderstandFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) faultURI.
    recoveredValue2 := (self) lookup: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) mustUnderstandFault: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000605c; bytecode file offset 0x671b8"
!SstSoapFault class methodsFor: 'recovered'!
unregister: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) unregister: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006394; bytecode file offset 0x67530"
!SstSoapFault class methodsFor: 'recovered'!
lookup: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) lookup: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200063e4; bytecode file offset 0x67530"
!SstSoapFault class methodsFor: 'recovered'!
register: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) register: (recoveredValue1) as: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000e624; bytecode file offset 0x6f718"
!SstSoapFault class methodsFor: 'recovered'!
registry
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Registry.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SstWSSimpleRegistry.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := (self) registry: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := Registry.
    ^recoveredValue2
! !

