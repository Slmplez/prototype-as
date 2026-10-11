"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20125a84; bytecode file offset 0xa22600"
!ASAP2DiagnosticServicesIFData methodsFor: 'recovered'!
getTpBlob: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2DiagnosticServicesTPBlob.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) tpBlob: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2018a424; bytecode file offset 0xa86cf0"
!ASAP2DiagnosticServicesIFData methodsFor: 'recovered'!
getSource: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASAP2QPSource.
    recoveredValue1 := ASAP2Kwp2000V30QPBlob.
    (recoveredValue0) QPBlobClass: (recoveredValue1).
    recoveredValue2 := ASAP2QPSource.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) addSource: (recoveredValue6).
    ^self
! !

