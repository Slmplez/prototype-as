"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000228; bytecode file offset 0x6147c"
!SstHttpCommunications class methodsFor: 'recovered'!
_PRAGMA_NlsCatSSTH
    ^self
! !

"xxx_dyn.ic method 0x200002a0; bytecode file offset 0x6147c"
!SstHttpCommunications class methodsFor: 'recovered'!
_PRAGMA_SstHttpConstants
    ^self
! !

"xxx_dyn.ic method 0x200014e0; bytecode file offset 0x626a4"
!SstHttpCommunications class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001504; bytecode file offset 0x626a4"
!SstHttpCommunications class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002934; bytecode file offset 0x63b1c"
!SstHttpCommunications class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x200031ac; bytecode file offset 0x64298"
!SstHttpCommunications class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := SstHttpConnection.
    (recoveredValue0) resetConnectionCounter.
    ^self
! !

"xxx_dyn.ic method 0x20004b00; bytecode file offset 0x65c7c"
!SstHttpCommunications class methodsFor: 'recovered'!
isBodyEmptyForResponseStatus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := HttpConnectionEstablished.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sameAs: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004bb0; bytecode file offset 0x65c7c"
!SstHttpCommunications class methodsFor: 'recovered'!
isPersistentConnectionSignifiedByResponseStatus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := HttpConnectionEstablished.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sameAs: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005df0; bytecode file offset 0x66f2c"
!SstHttpCommunications class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200065f0; bytecode file offset 0x676d4"
!SstHttpCommunications class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatSSTH.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000b170; bytecode file offset 0x6c244"
!SstHttpCommunications class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    (self) initializeExceptions.
    (self) registerPluginConfigurations.
    (self) setupHtmlSpecialCharacterMap.
    (self) setupUrlEncodingSpecialCharacterMap.
    ^self
! !

"xxx_dyn.ic method 0x2000cf74; bytecode file offset 0x6e068"
!SstHttpCommunications class methodsFor: 'recovered'!
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

"xxx_dyn.ic method 0x20011170; bytecode file offset 0x7224c"
!SstHttpCommunications class methodsFor: 'recovered'!
initializeExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExSstHttpRequestError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExSstNonFatalError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExSstHttpRequestError := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExSstHttpRequestError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := MxSSTH53.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20014244; bytecode file offset 0x75324"
!SstHttpCommunications class methodsFor: 'recovered'!
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

"xxx_dyn.ic method 0x20016b74; bytecode file offset 0x77c58"
!SstHttpCommunications class methodsFor: 'recovered'!
setupUrlEncodingSpecialCharacterMap
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal3 := #(59 47 63 58 64 38 61 43 36 44).
    recoveredLocal2 := #(60 62 35 37 34).
    recoveredLocal1 := #(123 125 124 92 94 91 93 96).
    recoveredValue0 := IdentitySet.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    UrlEncodingSpecialCharacterMap := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredLocal3.
    (recoveredValue3) addAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) addAll: (recoveredValue8).
    (recoveredValue1) add: (32).
    ^self
! !

"xxx_dyn.ic method 0x20018a50; bytecode file offset 0x79c2c"
!SstHttpCommunications class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b4b4Arg1 | 
    | block2800b4b4Stack0 block2800b4b4Stack1 block2800b4b4Stack2 block2800b4b4Stack3 block2800b4b4Stack4 block2800b4b4PC block2800b4b4Step block2800b4b4Done block2800b4b4Result |
    block2800b4b4Stack0 := self.
    block2800b4b4PC := 4.
    block2800b4b4Done := false.
    [block2800b4b4Done not] whileTrue: [
        block2800b4b4Step := block2800b4b4PC.
        block2800b4b4Step = 4 ifTrue: [
            block2800b4b4Stack1 := block2800b4b4Arg1.
            block2800b4b4PC := 5.
        ].
        block2800b4b4Step = 5 ifTrue: [
            block2800b4b4Stack2 := 'cleanUpBeforeRemove'.
            block2800b4b4PC := 7.
        ].
        block2800b4b4Step = 7 ifTrue: [
            block2800b4b4Stack1 := (block2800b4b4Stack1) respondsTo: (block2800b4b4Stack2).
            block2800b4b4PC := 8.
        ].
        block2800b4b4Step = 8 ifTrue: [
            (block2800b4b4Stack1) ifTrue: [block2800b4b4PC := 12] ifFalse: [block2800b4b4PC := 15].
        ].
        block2800b4b4Step = 12 ifTrue: [
            block2800b4b4Stack1 := block2800b4b4Arg1.
            block2800b4b4PC := 13.
        ].
        block2800b4b4Step = 13 ifTrue: [
            (block2800b4b4Stack1) cleanUpBeforeRemove.
            block2800b4b4PC := 15.
        ].
        block2800b4b4Step = 15 ifTrue: [
            block2800b4b4Stack1 := nil.
            block2800b4b4PC := 16.
        ].
        block2800b4b4Step = 16 ifTrue: [
            block2800b4b4Stack2 := block2800b4b4Arg1.
            block2800b4b4PC := 17.
        ].
        block2800b4b4Step = 17 ifTrue: [
            block2800b4b4Stack2 := (block2800b4b4Stack2) class.
            block2800b4b4PC := 18.
        ].
        block2800b4b4Step = 18 ifTrue: [
            block2800b4b4Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b4b4PC := 20.
        ].
        block2800b4b4Step = 20 ifTrue: [
            block2800b4b4Stack2 := (block2800b4b4Stack2) includesSelector: (block2800b4b4Stack3).
            block2800b4b4PC := 22.
        ].
        block2800b4b4Step = 22 ifTrue: [
            (block2800b4b4Stack2) ifTrue: [block2800b4b4PC := 26] ifFalse: [block2800b4b4PC := 30].
        ].
        block2800b4b4Step = 26 ifTrue: [
            block2800b4b4PC := 27.
        ].
        block2800b4b4Step = 27 ifTrue: [
            block2800b4b4Stack1 := block2800b4b4Arg1.
            block2800b4b4PC := 28.
        ].
        block2800b4b4Step = 28 ifTrue: [
            block2800b4b4Stack1 := (block2800b4b4Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b4b4PC := 30.
        ].
        block2800b4b4Step = 30 ifTrue: [
            block2800b4b4Result := block2800b4b4Stack1.
            block2800b4b4Done := true.
        ].
    ].
    block2800b4b4Result
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

"xxx_dyn.ic method 0x2001a15c; bytecode file offset 0x7b240"
!SstHttpCommunications class methodsFor: 'recovered'!
setupHtmlSpecialCharacterMap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    HtmlSpecialCharacterMap := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ($&) put: ('&amp;').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ($<) put: ('&lt;').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ($>) put: ('&gt;').
    (recoveredValue1) at: ($") put: ('&quot;').
    ^self
! !

"xxx_dyn.ic method 0x2001a290; bytecode file offset 0x7b39c"
!SstHttpCommunications class methodsFor: 'recovered'!
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
            recoveredStack1 := [:block2800b6acArg1 | 
    | block2800b6acStack0 block2800b6acStack1 block2800b6acStack2 block2800b6acStack3 block2800b6acStack4 block2800b6acPC block2800b6acStep block2800b6acDone block2800b6acResult |
    block2800b6acStack0 := self.
    block2800b6acPC := 4.
    block2800b6acDone := false.
    [block2800b6acDone not] whileTrue: [
        block2800b6acStep := block2800b6acPC.
        block2800b6acStep = 4 ifTrue: [
            block2800b6acStack1 := block2800b6acArg1.
            block2800b6acPC := 5.
        ].
        block2800b6acStep = 5 ifTrue: [
            block2800b6acStack2 := 'setupAfterLoad'.
            block2800b6acPC := 7.
        ].
        block2800b6acStep = 7 ifTrue: [
            block2800b6acStack1 := (block2800b6acStack1) respondsTo: (block2800b6acStack2).
            block2800b6acPC := 8.
        ].
        block2800b6acStep = 8 ifTrue: [
            (block2800b6acStack1) ifTrue: [block2800b6acPC := 12] ifFalse: [block2800b6acPC := 15].
        ].
        block2800b6acStep = 12 ifTrue: [
            block2800b6acStack1 := block2800b6acArg1.
            block2800b6acPC := 13.
        ].
        block2800b6acStep = 13 ifTrue: [
            (block2800b6acStack1) setupAfterLoad.
            block2800b6acPC := 15.
        ].
        block2800b6acStep = 15 ifTrue: [
            block2800b6acStack1 := nil.
            block2800b6acPC := 16.
        ].
        block2800b6acStep = 16 ifTrue: [
            block2800b6acStack2 := block2800b6acArg1.
            block2800b6acPC := 17.
        ].
        block2800b6acStep = 17 ifTrue: [
            block2800b6acStack2 := (block2800b6acStack2) class.
            block2800b6acPC := 19.
        ].
        block2800b6acStep = 19 ifTrue: [
            block2800b6acStack3 := 'setupAfterLoadNonInherited'.
            block2800b6acPC := 21.
        ].
        block2800b6acStep = 21 ifTrue: [
            block2800b6acStack2 := (block2800b6acStack2) includesSelector: (block2800b6acStack3).
            block2800b6acPC := 23.
        ].
        block2800b6acStep = 23 ifTrue: [
            (block2800b6acStack2) ifTrue: [block2800b6acPC := 26] ifFalse: [block2800b6acPC := 30].
        ].
        block2800b6acStep = 26 ifTrue: [
            block2800b6acPC := 27.
        ].
        block2800b6acStep = 27 ifTrue: [
            block2800b6acStack1 := block2800b6acArg1.
            block2800b6acPC := 28.
        ].
        block2800b6acStep = 28 ifTrue: [
            block2800b6acStack1 := (block2800b6acStack1) setupAfterLoadNonInherited.
            block2800b6acPC := 30.
        ].
        block2800b6acStep = 30 ifTrue: [
            block2800b6acResult := block2800b6acStack1.
            block2800b6acDone := true.
        ].
    ].
    block2800b6acResult
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

"xxx_dyn.ic method 0x2001f9c4; bytecode file offset 0x80ab4"
!SstHttpCommunications class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) value: (13).
    HttpCr := recoveredValue1.
    recoveredValue2 := Character.
    recoveredValue3 := (recoveredValue2) value: (10).
    HttpLf := recoveredValue3.
    recoveredValue4 := String.
    recoveredValue5 := Character.
    recoveredValue6 := (recoveredValue5) value: (13).
    recoveredValue7 := (recoveredValue4) with: (recoveredValue6).
    HttpCrString := recoveredValue7.
    recoveredValue8 := String.
    recoveredValue9 := Character.
    recoveredValue10 := (recoveredValue9) value: (10).
    recoveredValue11 := (recoveredValue8) with: (recoveredValue10).
    HttpLfString := recoveredValue11.
    recoveredValue12 := String.
    recoveredValue13 := Character.
    recoveredValue14 := (recoveredValue13) value: (13).
    recoveredValue15 := Character.
    recoveredValue16 := (recoveredValue15) value: (10).
    recoveredValue17 := (recoveredValue12) with: (recoveredValue14) with: (recoveredValue16).
    HttpCrLfString := recoveredValue17.
    recoveredValue18 := Character.
    recoveredValue19 := (recoveredValue18) value: (32).
    HttpSpace := recoveredValue19.
    ^self
! !

"xxx_dyn.ic method 0x200211c0; bytecode file offset 0x822e0"
!SstHttpCommunications class methodsFor: 'recovered'!
lightTransportConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := SstHttpConfiguration.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) transportIdentifier: ('httpl').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SstTcpLightTransport.
    (recoveredValue3) transportClass: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstHttpAssembler.
    (recoveredValue5) assemblerClass: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := SstHttpConnection.
    (recoveredValue7) connectionClass: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) connectionScheme: (nil).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := SstHttpStreamSelect.
    recoveredValue12 := (recoveredValue11) preferredSocketStream.
    (recoveredValue10) streamClass: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := SstByteMessage.
    (recoveredValue13) messageClass: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := SciSocketAddress.
    (recoveredValue15) addressClass: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) defaultPort: (0).
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) nonBlocking: (false).
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) noDelay: (true).
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) allowIncomingConnections: (false).
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) reuseAddress: (true).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20022b20; bytecode file offset 0x83c50"
!SstHttpCommunications class methodsFor: 'recovered'!
serverTransportConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := SstHttpConfiguration.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) transportIdentifier: ('http').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SstByteMessage.
    (recoveredValue3) messageClass: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstHttpAssembler.
    (recoveredValue5) assemblerClass: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := SstHttpConnection.
    (recoveredValue7) connectionClass: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SstHttpConnectionManager.
    (recoveredValue9) connectionManagerClass: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) connectionScheme: (nil).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := SstHttpStreamSelect.
    recoveredValue14 := (recoveredValue13) preferredSocketStream.
    (recoveredValue12) streamClass: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := SstTcpTransport.
    (recoveredValue15) transportClass: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SciSocketAddress.
    (recoveredValue17) addressClass: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) nonBlocking: (false).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SstHttpUrl.
    recoveredValue22 := (recoveredValue21) defaultPort.
    (recoveredValue20) defaultPort: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) noDelay: (true).
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) allowIncomingConnections: (true).
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) reuseAddress: (true).
    ^recoveredValue1
! !

