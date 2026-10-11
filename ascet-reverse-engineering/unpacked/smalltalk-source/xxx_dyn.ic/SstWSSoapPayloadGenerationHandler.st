"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001ca0; bytecode file offset 0x62d98"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
headerArgumentsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) messageArgumentsFrom: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000309c; bytecode file offset 0x64170"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
soapBodyPayloadWithArguments: recoveredArg1 forEnvelope: recoveredArg2 context: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"xxx_dyn.ic method 0x20003bac; bytecode file offset 0x64d78"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
bodyFactory
    | recoveredValue0 |
    recoveredValue0 := bodyFactory.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003cd8; bytecode file offset 0x64ed4"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
headerFactory
    | recoveredValue0 |
    recoveredValue0 := headerFactory.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004cec; bytecode file offset 0x65de8"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
messageArgumentsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSOperationArguments.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200081cc; bytecode file offset 0x692b8"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
bodyFactory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bodyFactory := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008228; bytecode file offset 0x69404"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
headerFactory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    headerFactory := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000b0e8; bytecode file offset 0x6c1b4"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
createHeaderFor: recoveredArg1 messageContext: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) headerArgumentsFrom: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) createHeadersWithArguments: (recoveredValue2) forEnvelope: (recoveredValue3) context: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2000c620; bytecode file offset 0x6d6f0"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) currentMessage.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (self) createHeaderFor: (recoveredValue2) messageContext: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (self) createBodyFor: (recoveredValue4) messageContext: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x2000ccac; bytecode file offset 0x6dd7c"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
getCurrentMessageFrom: recoveredArg1 context: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) pastPivot.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) output.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) input.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d2f8; bytecode file offset 0x6e3d4"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SstSoapBody.
    (self) bodyFactory: (recoveredValue0).
    recoveredValue1 := SstSoapHeader.
    (self) headerFactory: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2001264c; bytecode file offset 0x73728"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
createBodyFor: recoveredArg1 messageContext: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) bodyFactory.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) createUsing: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) messageArgumentsFrom: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) soapBodyPayloadWithArguments: (recoveredValue4) forEnvelope: (recoveredValue5) context: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) addElement: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) body: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"xxx_dyn.ic method 0x20017228; bytecode file offset 0x78308"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
createPayloadNamed: recoveredArg1 withArguments: recoveredArg2 forEnvelope: recoveredArg3 message: recoveredArg4 bindingOperation: recoveredArg5 extension: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWSEncodingStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMessage: (recoveredStack2) bindingOperation: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Unable to determine encoder for %1'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredArg6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) payloadNamed: (recoveredStack1) withArguments: (recoveredStack2) message: (recoveredStack3) envelope: (recoveredStack4) extension: (recoveredStack5) encoder: (recoveredStack6).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001851c; bytecode file offset 0x79604"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
createHeaderPayloadNamed: recoveredArg1 withArguments: recoveredArg2 forEnvelope: recoveredArg3 message: recoveredArg4 bindingOperation: recoveredArg5 extension: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWSEncodingStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := WSDocumentString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) use.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) forStyle: (recoveredStack2) use: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Unable to determine encoder for %1'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredArg6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) payloadNamed: (recoveredStack1) withArguments: (recoveredStack2) message: (recoveredStack3) envelope: (recoveredStack4) extension: (recoveredStack5) encoder: (recoveredStack6).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200216c4; bytecode file offset 0x827b8"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
addHeaderFor: recoveredArg1 bindingOperation: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) part.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) partNamed: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeObject.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) container.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlerFactory.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) namespaceUri.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlerNamed: (recoveredStack2) inNamespace: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) invoke: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002d85c; bytecode file offset 0x8e964"
!SstWSSoapPayloadGenerationHandler methodsFor: 'recovered'!
createHeadersWithArguments: recoveredArg1 forEnvelope: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindingOperation.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPartFrom: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapHeaderExtensions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) operation.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentMessageFrom: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Arg1.
            recoveredBlock90PC := 97.
        ].
        recoveredBlock90Step = 97 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) messageObject.
            recoveredBlock90PC := 99.
        ].
        recoveredBlock90Step = 99 ifTrue: [
            recoveredBlock90Stack2 := recoveredLocal3.
            recoveredBlock90PC := 102.
        ].
        recoveredBlock90Step = 102 ifTrue: [
            (recoveredBlock90Stack1 ~~ recoveredBlock90Stack2) ifTrue: [recoveredBlock90PC := 116] ifFalse: [recoveredBlock90PC := 106].
        ].
        recoveredBlock90Step = 106 ifTrue: [
            recoveredBlock90Stack1 := recoveredLocal5.
            recoveredBlock90PC := 109.
        ].
        recoveredBlock90Step = 109 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 110.
        ].
        recoveredBlock90Step = 110 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) add: (recoveredBlock90Stack2).
            recoveredBlock90PC := 112.
        ].
        recoveredBlock90Step = 112 ifTrue: [
            recoveredBlock90PC := 122.
        ].
        recoveredBlock90Step = 116 ifTrue: [
            recoveredBlock90Stack1 := recoveredLocal4.
            recoveredBlock90PC := 119.
        ].
        recoveredBlock90Step = 119 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 120.
        ].
        recoveredBlock90Step = 120 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) add: (recoveredBlock90Stack2).
            recoveredBlock90PC := 122.
        ].
        recoveredBlock90Step = 122 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack1.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 recoveredBlock135Value6 recoveredBlock135Value7 recoveredBlock135Value8 recoveredBlock135Value9 |
    recoveredBlock135Value0 := recoveredArg2.
    recoveredBlock135Value1 := recoveredLocal3.
    recoveredBlock135Value2 := (recoveredBlock135Value1) name.
    recoveredBlock135Value3 := recoveredArg1.
    recoveredBlock135Value4 := recoveredArg2.
    recoveredBlock135Value5 := recoveredLocal3.
    recoveredBlock135Value6 := recoveredLocal1.
    recoveredBlock135Value7 := recoveredBlock135Arg1.
    recoveredBlock135Value8 := (self) createHeaderPayloadNamed: (recoveredBlock135Value2) withArguments: (recoveredBlock135Value3) forEnvelope: (recoveredBlock135Value4) message: (recoveredBlock135Value5) bindingOperation: (recoveredBlock135Value6) extension: (recoveredBlock135Value7).
    recoveredBlock135Value9 := (recoveredBlock135Value0) addHeaderElement: (recoveredBlock135Value8).
    recoveredBlock135Value9
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := [:recoveredBlock175Arg1 | 
    | recoveredBlock175Value0 recoveredBlock175Value1 recoveredBlock175Value2 recoveredBlock175Value3 |
    recoveredBlock175Value0 := recoveredBlock175Arg1.
    recoveredBlock175Value1 := recoveredLocal1.
    recoveredBlock175Value2 := recoveredArg3.
    recoveredBlock175Value3 := (self) addHeaderFor: (recoveredBlock175Value0) bindingOperation: (recoveredBlock175Value1) context: (recoveredBlock175Value2).
    recoveredBlock175Value3
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

