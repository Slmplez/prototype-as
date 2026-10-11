"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003d98; bytecode file offset 0x64ed4"
!SstSecureRemoteEndpoint methodsFor: 'recovered'!
securityConfiguration
    | recoveredValue0 |
    recoveredValue0 := securityConfiguration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008318; bytecode file offset 0x69404"
!SstSecureRemoteEndpoint methodsFor: 'recovered'!
securityConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    securityConfiguration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000ff54; bytecode file offset 0x71038"
!SstSecureRemoteEndpoint methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super configuration: (recoveredValue0).
    recoveredValue1 := SstTransport.
    recoveredValue2 := (self) transportIdentifier.
    recoveredValue3 := (recoveredValue1) configurationForIdentifier: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) securityConfiguration.
    recoveredValue5 := (recoveredValue4) copy.
    (self) securityConfiguration: (recoveredValue5).
    ^self
! !

