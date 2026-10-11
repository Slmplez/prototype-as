"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20005470; bytecode file offset 0x6655c"
!SstSoap11Fault class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredValue0 |
    recoveredValue0 := (self) abtXmlCacheKey.
    (self) unregister: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x2000679c; bytecode file offset 0x67868"
!SstSoap11Fault class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 |
    recoveredValue0 := (self) abtXmlCacheKey.
    (self) register: (self) as: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x2000f410; bytecode file offset 0x7055c"
!SstSoap11Fault class methodsFor: 'recovered'!
versionMismatchFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstSoapFaultCodeVersionMismatch.
    (recoveredValue1) faultCode: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ExSstSoapVersionMismatchException.
    recoveredValue5 := (recoveredValue4) description.
    (recoveredValue3) faultString: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := ExSstSoapVersionMismatchException.
    (recoveredValue6) exception: (recoveredValue7).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000f434; bytecode file offset 0x7055c"
!SstSoap11Fault class methodsFor: 'recovered'!
serverFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstSoapFaultCodeServer.
    (recoveredValue1) faultCode: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ExSstSoapServerException.
    recoveredValue5 := (recoveredValue4) description.
    (recoveredValue3) faultString: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := ExSstSoapServerException.
    (recoveredValue6) exception: (recoveredValue7).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000f458; bytecode file offset 0x7055c"
!SstSoap11Fault class methodsFor: 'recovered'!
clientFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstSoapFaultCodeClient.
    (recoveredValue1) faultCode: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ExSstSoapClientException.
    recoveredValue5 := (recoveredValue4) description.
    (recoveredValue3) faultString: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := ExSstSoapClientException.
    (recoveredValue6) exception: (recoveredValue7).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000f47c; bytecode file offset 0x7055c"
!SstSoap11Fault class methodsFor: 'recovered'!
mustUnderstandFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstSoapFaultCodeMustUnderstand.
    (recoveredValue1) faultCode: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ExSstSoapMustUnderstandException.
    recoveredValue5 := (recoveredValue4) description.
    (recoveredValue3) faultString: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := ExSstSoapMustUnderstandException.
    (recoveredValue6) exception: (recoveredValue7).
    ^recoveredValue0
! !

