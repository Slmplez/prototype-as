"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000121c; bytecode file offset 0x626a4"
!SstHttpsCommunications class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001234; bytecode file offset 0x626a4"
!SstHttpsCommunications class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200028bc; bytecode file offset 0x63b1c"
!SstHttpsCommunications class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    (self) registerPluginConfigurations.
    ^self
! !

"xxx_dyn.ic method 0x20002910; bytecode file offset 0x63b1c"
!SstHttpsCommunications class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x200031cc; bytecode file offset 0x64298"
!SstHttpsCommunications class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := SstHttpConnection.
    (recoveredValue0) resetConnectionCounter.
    ^self
! !

"xxx_dyn.ic method 0x20005e20; bytecode file offset 0x66f2c"
!SstHttpsCommunications class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006604; bytecode file offset 0x676d4"
!SstHttpsCommunications class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatSSTH.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000cf90; bytecode file offset 0x6e068"
!SstHttpsCommunications class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SstTransport.
    recoveredValue1 := (self) serverTransportConfiguration.
    recoveredValue2 := (recoveredValue1) transportIdentifier.
    (recoveredValue0) unregister: (recoveredValue2).
    recoveredValue3 := SstTransport.
    recoveredValue4 := (self) lightTransportConfiguration.
    recoveredValue5 := (recoveredValue4) transportIdentifier.
    (recoveredValue3) unregister: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x20014220; bytecode file offset 0x75324"
!SstHttpsCommunications class methodsFor: 'recovered'!
registerPluginConfigurations
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) serverTransportConfiguration.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) lightTransportConfiguration.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) transportIdentifier.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) transportIdentifier.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := SstTransport.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue9) register: (recoveredValue10) mutuallyReachableBy: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue8) register: (recoveredValue12) mutuallyReachableBy: (recoveredValue13).
    ^self
! !

"xxx_dyn.ic method 0x200186f0; bytecode file offset 0x79c2c"
!SstHttpsCommunications class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b154Arg1 | 
    | block2800b154Stack0 block2800b154Stack1 block2800b154Stack2 block2800b154Stack3 block2800b154Stack4 block2800b154PC block2800b154Step block2800b154Done block2800b154Result |
    block2800b154Stack0 := self.
    block2800b154PC := 4.
    block2800b154Done := false.
    [block2800b154Done not] whileTrue: [
        block2800b154Step := block2800b154PC.
        block2800b154Step = 4 ifTrue: [
            block2800b154Stack1 := block2800b154Arg1.
            block2800b154PC := 5.
        ].
        block2800b154Step = 5 ifTrue: [
            block2800b154Stack2 := 'cleanUpBeforeRemove'.
            block2800b154PC := 7.
        ].
        block2800b154Step = 7 ifTrue: [
            block2800b154Stack1 := (block2800b154Stack1) respondsTo: (block2800b154Stack2).
            block2800b154PC := 8.
        ].
        block2800b154Step = 8 ifTrue: [
            (block2800b154Stack1) ifTrue: [block2800b154PC := 12] ifFalse: [block2800b154PC := 15].
        ].
        block2800b154Step = 12 ifTrue: [
            block2800b154Stack1 := block2800b154Arg1.
            block2800b154PC := 13.
        ].
        block2800b154Step = 13 ifTrue: [
            (block2800b154Stack1) cleanUpBeforeRemove.
            block2800b154PC := 15.
        ].
        block2800b154Step = 15 ifTrue: [
            block2800b154Stack1 := nil.
            block2800b154PC := 16.
        ].
        block2800b154Step = 16 ifTrue: [
            block2800b154Stack2 := block2800b154Arg1.
            block2800b154PC := 17.
        ].
        block2800b154Step = 17 ifTrue: [
            block2800b154Stack2 := (block2800b154Stack2) class.
            block2800b154PC := 18.
        ].
        block2800b154Step = 18 ifTrue: [
            block2800b154Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b154PC := 20.
        ].
        block2800b154Step = 20 ifTrue: [
            block2800b154Stack2 := (block2800b154Stack2) includesSelector: (block2800b154Stack3).
            block2800b154PC := 22.
        ].
        block2800b154Step = 22 ifTrue: [
            (block2800b154Stack2) ifTrue: [block2800b154PC := 26] ifFalse: [block2800b154PC := 30].
        ].
        block2800b154Step = 26 ifTrue: [
            block2800b154PC := 27.
        ].
        block2800b154Step = 27 ifTrue: [
            block2800b154Stack1 := block2800b154Arg1.
            block2800b154PC := 28.
        ].
        block2800b154Step = 28 ifTrue: [
            block2800b154Stack1 := (block2800b154Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b154PC := 30.
        ].
        block2800b154Step = 30 ifTrue: [
            block2800b154Result := block2800b154Stack1.
            block2800b154Done := true.
        ].
    ].
    block2800b154Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200197dc; bytecode file offset 0x7a8e0"
!SstHttpsCommunications class methodsFor: 'recovered'!
lightTransportConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := SstHttpCommunications.
    recoveredValue1 := (recoveredValue0) lightTransportConfiguration.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) transportIdentifier: ('httpsl').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SciSslSocket.
    (recoveredValue3) socketClass: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nonBlocking: (false).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SstSecureRemoteEndpoint.
    (recoveredValue6) remoteEndpointClass: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SstHttpsConnection.
    (recoveredValue8) connectionClass: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := SciSslSocketConfiguration.
    recoveredValue12 := (recoveredValue11) new.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := SSLv3.
    (recoveredValue13) sslVersion: (recoveredValue14).
    (recoveredValue10) securityConfiguration: (recoveredValue12).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001a268; bytecode file offset 0x7b39c"
!SstHttpsCommunications class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := defined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block2800b688Arg1 | 
    | block2800b688Stack0 block2800b688Stack1 block2800b688Stack2 block2800b688Stack3 block2800b688Stack4 block2800b688PC block2800b688Step block2800b688Done block2800b688Result |
    block2800b688Stack0 := self.
    block2800b688PC := 4.
    block2800b688Done := false.
    [block2800b688Done not] whileTrue: [
        block2800b688Step := block2800b688PC.
        block2800b688Step = 4 ifTrue: [
            block2800b688Stack1 := block2800b688Arg1.
            block2800b688PC := 5.
        ].
        block2800b688Step = 5 ifTrue: [
            block2800b688Stack2 := 'setupAfterLoad'.
            block2800b688PC := 7.
        ].
        block2800b688Step = 7 ifTrue: [
            block2800b688Stack1 := (block2800b688Stack1) respondsTo: (block2800b688Stack2).
            block2800b688PC := 8.
        ].
        block2800b688Step = 8 ifTrue: [
            (block2800b688Stack1) ifTrue: [block2800b688PC := 12] ifFalse: [block2800b688PC := 15].
        ].
        block2800b688Step = 12 ifTrue: [
            block2800b688Stack1 := block2800b688Arg1.
            block2800b688PC := 13.
        ].
        block2800b688Step = 13 ifTrue: [
            (block2800b688Stack1) setupAfterLoad.
            block2800b688PC := 15.
        ].
        block2800b688Step = 15 ifTrue: [
            block2800b688Stack1 := nil.
            block2800b688PC := 16.
        ].
        block2800b688Step = 16 ifTrue: [
            block2800b688Stack2 := block2800b688Arg1.
            block2800b688PC := 17.
        ].
        block2800b688Step = 17 ifTrue: [
            block2800b688Stack2 := (block2800b688Stack2) class.
            block2800b688PC := 19.
        ].
        block2800b688Step = 19 ifTrue: [
            block2800b688Stack3 := 'setupAfterLoadNonInherited'.
            block2800b688PC := 21.
        ].
        block2800b688Step = 21 ifTrue: [
            block2800b688Stack2 := (block2800b688Stack2) includesSelector: (block2800b688Stack3).
            block2800b688PC := 23.
        ].
        block2800b688Step = 23 ifTrue: [
            (block2800b688Stack2) ifTrue: [block2800b688PC := 26] ifFalse: [block2800b688PC := 30].
        ].
        block2800b688Step = 26 ifTrue: [
            block2800b688PC := 27.
        ].
        block2800b688Step = 27 ifTrue: [
            block2800b688Stack1 := block2800b688Arg1.
            block2800b688PC := 28.
        ].
        block2800b688Step = 28 ifTrue: [
            block2800b688Stack1 := (block2800b688Stack1) setupAfterLoadNonInherited.
            block2800b688PC := 30.
        ].
        block2800b688Step = 30 ifTrue: [
            block2800b688Result := block2800b688Stack1.
            block2800b688Done := true.
        ].
    ].
    block2800b688Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002086c; bytecode file offset 0x81994"
!SstHttpsCommunications class methodsFor: 'recovered'!
serverTransportConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := SstHttpCommunications.
    recoveredValue1 := (recoveredValue0) serverTransportConfiguration.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) transportIdentifier: ('https').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SstHttpsUrl.
    recoveredValue5 := (recoveredValue4) defaultPort.
    (recoveredValue3) defaultPort: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SciSslSocket.
    (recoveredValue6) socketClass: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) nonBlocking: (false).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SstSecureRemoteEndpoint.
    (recoveredValue9) remoteEndpointClass: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := SstHttpsConnection.
    (recoveredValue11) connectionClass: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := SciSslSocketConfiguration.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := SciSslContext.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := (recoveredValue18) defaultSslMethod.
    (recoveredValue16) sslVersion: (recoveredValue19).
    recoveredValue20 := recoveredValue15.
    (recoveredValue20) sstToBeFixed.
    recoveredValue21 := recoveredValue15.
    (recoveredValue21) certificateFilename: ('cert.pem').
    recoveredValue22 := recoveredValue15.
    (recoveredValue22) privateKeyFilename: ('key.pem').
    (recoveredValue13) securityConfiguration: (recoveredValue15).
    ^recoveredValue1
! !

