"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001670; bytecode file offset 0x62738"
!SstWSService methodsFor: 'recovered'!
sstIsRemote
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sstTarget.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001690; bytecode file offset 0x62770"
!SstWSService methodsFor: 'recovered'!
sstIsUnavailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sstIsAvailable.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200018ac; bytecode file offset 0x62c08"
!SstWSService methodsFor: 'recovered'!
sstNamespace
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sstImplementation.
    recoveredValue1 := (recoveredValue0) namespace.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200018dc; bytecode file offset 0x62c08"
!SstWSService methodsFor: 'recovered'!
sstName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sstImplementation.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001b3c; bytecode file offset 0x62c08"
!SstWSService methodsFor: 'recovered'!
sstDeploymentIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sstClassField.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001c58; bytecode file offset 0x62d98"
!SstWSService methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sstDispatch: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001fac; bytecode file offset 0x63558"
!SstWSService methodsFor: 'recovered'!
sstUsernameToken
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSUsernameToken.
    recoveredValue1 := (self) sstPropertyNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000209c; bytecode file offset 0x63558"
!SstWSService methodsFor: 'recovered'!
sstAuthCredential
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSAuthCredential.
    recoveredValue1 := (self) sstPropertyNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002680; bytecode file offset 0x6376c"
!SstWSService methodsFor: 'recovered'!
sstSoapEnvelopeNamespace
    | recoveredValue0 |
    recoveredValue0 := (self) sstPropertyNamed: ('wsSoapEnvelopeNamespace').
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002a24; bytecode file offset 0x63b1c"
!SstWSService methodsFor: 'recovered'!
sstInitialize
    (self) sstMarkAvailable.
    ^self
! !

"xxx_dyn.ic method 0x20003390; bytecode file offset 0x64464"
!SstWSService methodsFor: 'recovered'!
sstMarkUnavailable
    (self) sstAvailabilityMarker: (nil).
    ^self
! !

"xxx_dyn.ic method 0x200034b8; bytecode file offset 0x645a4"
!SstWSService methodsFor: 'recovered'!
sstIsAvailable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sstAvailabilityMarker.
    recoveredValue1 := WSAvailableMarker.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003ad0; bytecode file offset 0x64bac"
!SstWSService methodsFor: 'recovered'!
sstImplementation
    | recoveredValue0 |
    recoveredValue0 := sstImplementation.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c94; bytecode file offset 0x64d78"
!SstWSService methodsFor: 'recovered'!
sstContainer
    | recoveredValue0 |
    recoveredValue0 := container.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d20; bytecode file offset 0x64ed4"
!SstWSService methodsFor: 'recovered'!
sstMethodMap
    | recoveredValue0 |
    recoveredValue0 := sstMethodMap.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e9c; bytecode file offset 0x64fe8"
!SstWSService methodsFor: 'recovered'!
sstAvailabilityMarker
    | recoveredValue0 |
    recoveredValue0 := sstAvailabilityMarker.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200046c8; bytecode file offset 0x6592c"
!SstWSService methodsFor: 'recovered'!
sstIsWebService
    ^true
! !

"xxx_dyn.ic method 0x20004dd8; bytecode file offset 0x65eb4"
!SstWSService methodsFor: 'recovered'!
sstDispatchLocal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sstTarget.
    recoveredValue2 := (recoveredValue0) sendTo: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005130; bytecode file offset 0x6624c"
!SstWSService methodsFor: 'recovered'!
sstMarkAvailable
    | recoveredValue0 |
    recoveredValue0 := WSAvailableMarker.
    (self) sstAvailabilityMarker: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005bfc; bytecode file offset 0x66d78"
!SstWSService methodsFor: 'recovered'!
sstSoapEnvelopeNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sstAddProperty: (recoveredValue0) named: ('wsSoapEnvelopeNamespace').
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20005c7c; bytecode file offset 0x66d78"
!SstWSService methodsFor: 'recovered'!
sstPropertyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) sstPropertyNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006354; bytecode file offset 0x67530"
!SstWSService methodsFor: 'recovered'!
sstPropertyNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sstProperties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006ca8; bytecode file offset 0x67dc4"
!SstWSService methodsFor: 'recovered'!
sstUsernameToken: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSUsernameToken.
    (self) sstAddProperty: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006ce8; bytecode file offset 0x67dc4"
!SstWSService methodsFor: 'recovered'!
sstAuthCredential: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSAuthCredential.
    (self) sstAddProperty: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006fa0; bytecode file offset 0x681b0"
!SstWSService methodsFor: 'recovered'!
sstSelectorForOperationName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sstMethodMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006fb4; bytecode file offset 0x681b0"
!SstWSService methodsFor: 'recovered'!
sstRemoveProperty: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sstProperties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006fc8; bytecode file offset 0x681b0"
!SstWSService methodsFor: 'recovered'!
sstOperationNameForSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sstMethodMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) atObject: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200072f4; bytecode file offset 0x683c0"
!SstWSService methodsFor: 'recovered'!
sstAddProperty: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sstProperties.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007fc8; bytecode file offset 0x69104"
!SstWSService methodsFor: 'recovered'!
sstImplementation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sstImplementation := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200080b4; bytecode file offset 0x692b8"
!SstWSService methodsFor: 'recovered'!
sstContainer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    container := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008290; bytecode file offset 0x69404"
!SstWSService methodsFor: 'recovered'!
sstMethodMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sstMethodMap := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000841c; bytecode file offset 0x69508"
!SstWSService methodsFor: 'recovered'!
sstAvailabilityMarker: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sstAvailabilityMarker := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000be50; bytecode file offset 0x6cf2c"
!SstWSService methodsFor: 'recovered'!
sstProperties
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sstProperties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            sstProperties := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := sstProperties.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20012f74; bytecode file offset 0x74050"
!SstWSService methodsFor: 'recovered'!
sstDispatchRemote: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstOperationNameForSelector: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super doesNotUnderstand: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018228; bytecode file offset 0x79314"
!SstWSService methodsFor: 'recovered'!
sstDispatch: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsAvailable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsRemote.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstDispatchRemote: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstDispatchLocal: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := ExWSNonFatalError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Service %1 in namespace %2 is unavailable.'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) sstNamespace.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ad50; bytecode file offset 0x7be3c"
!SstWSService methodsFor: 'recovered'!
invoke: recoveredArg1 withArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstContainer.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageContextFactory.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) clientMessageContextForOperationNamed: (recoveredStack2) withArguments: (recoveredStack3) forService: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstContainer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) engineFactory.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) engineForService: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) engine: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) invoke: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentResult.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'Operation name must not be nil'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001afc4; bytecode file offset 0x7c0bc"
!SstWSService methodsFor: 'recovered'!
sstPrintString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new: (37).
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := super sstPrintString.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) space.
    recoveredValue10 := recoveredValue8.
    recoveredValue11 := (self) sstName.
    (recoveredValue10) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    (recoveredValue12) space.
    recoveredValue13 := (self) sstNamespace.
    (recoveredValue8) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    ^recoveredValue15
! !

