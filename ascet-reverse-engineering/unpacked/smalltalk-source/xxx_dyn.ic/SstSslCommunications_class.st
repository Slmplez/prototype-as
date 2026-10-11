"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002844; bytecode file offset 0x63b1c"
!SstSslCommunications class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20006560; bytecode file offset 0x67680"
!SstSslCommunications class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := SstTransport.
    (recoveredValue0) unregister: ('ssl').
    ^self
! !

"xxx_dyn.ic method 0x20021ed8; bytecode file offset 0x83004"
!SstSslCommunications class methodsFor: 'recovered'!
loaded
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := SstTransport.
    recoveredValue1 := (recoveredValue0) configurationForIdentifier: ('tcp').
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) transportIdentifier: ('ssl').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := SciSslSocket.
    (recoveredValue4) socketClass: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) nonBlocking: (false).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := SstSslSocketConnection.
    (recoveredValue7) connectionClass: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SstSslHeaderedByteMessage.
    (recoveredValue9) messageClass: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := SstSecureRemoteEndpoint.
    (recoveredValue11) remoteEndpointClass: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := SstSslTransport.
    (recoveredValue13) transportClass: (recoveredValue14).
    recoveredValue15 := SciSslSocketConfiguration.
    recoveredValue16 := (recoveredValue15) new.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := SciSslContext.
    recoveredValue19 := (recoveredValue18) new.
    recoveredValue20 := (recoveredValue19) defaultSslMethod.
    (recoveredValue17) sslVersion: (recoveredValue20).
    (recoveredValue1) securityConfiguration: (recoveredValue16).
    recoveredValue21 := SstTransport.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := Array.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue24) transportIdentifier.
    recoveredValue26 := (recoveredValue23) with: (recoveredValue25).
    (recoveredValue21) register: (recoveredValue22) mutuallyReachableBy: (recoveredValue26).
    ^self
! !

