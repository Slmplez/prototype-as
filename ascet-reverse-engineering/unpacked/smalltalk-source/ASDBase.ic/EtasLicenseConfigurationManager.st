"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004af5c; bytecode file offset 0x947a60"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
first
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b760; bytecode file offset 0x948384"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0bc8; bytecode file offset 0x9ce734"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
addRef
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610612737) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1168; bytecode file offset 0x9ce734"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
oleRelease
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610612738) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d36a8; bytecode file offset 0x9cff74"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
getNoOfRegisteredProducts
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (7) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d36e8; bytecode file offset 0x9cffa4"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
createLicenseGraceModeInstallationRegistryKeys
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (8) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011edb8; bytecode file offset 0xa1b678"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
first: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('firstChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ee58; bytecode file offset 0xa1b740"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (4) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('sizeChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2019a818; bytecode file offset 0xa97444"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
getTypeInfoCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (1610678272) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019abe0; bytecode file offset 0xa974ec"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
next: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (2) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019ac70; bytecode file offset 0xa97534"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
getLicenseInfoByName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (3) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201fad78; bytecode file offset 0xaf7758"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
queryInterface: recoveredArg1 ppvObj: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: (1610612736) withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201faf04; bytecode file offset 0xaf77c8"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
addProduct: recoveredArg1 sProductVersion: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: (5) withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201faf3c; bytecode file offset 0xaf7800"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
removeProduct: recoveredArg1 sProductVersion: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: (6) withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20244e9c; bytecode file offset 0xb41860"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
getTypeInfo: recoveredArg1 lcid: recoveredArg2 pptinfo: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) invoke: (1610678273) withArguments: (recoveredValue8) returnType: (true).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202deb6c; bytecode file offset 0xbdb530"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
getIDsOfNames: recoveredArg1 rgszNames: recoveredArg2 cNames: recoveredArg3 lcid: recoveredArg4 rgdispid: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredLocal1 := recoveredValue1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) invoke: (1610678274) withArguments: (recoveredValue12) returnType: (true).
    ^recoveredValue13
! !

"ASDBase.ic method 0x2038008c; bytecode file offset 0xc7c9e0"
!EtasLicenseConfigurationManager methodsFor: 'recovered'!
invoke: recoveredArg1 riid: recoveredArg2 lcid: recoveredArg3 wFlags: recoveredArg4 pdispparams: recoveredArg5 pvarResult: recoveredArg6 pexcepinfo: recoveredArg7 puArgErr: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredLocal1 := recoveredValue1.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) invoke: (1610678275) withArguments: (recoveredValue18) returnType: (true).
    ^recoveredValue19
! !

