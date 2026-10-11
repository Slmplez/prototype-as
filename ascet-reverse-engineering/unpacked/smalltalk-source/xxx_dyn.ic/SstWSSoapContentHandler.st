"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000bb0; bytecode file offset 0x61c7c"
!SstWSSoapContentHandler methodsFor: 'recovered'!
typeFromWsdlName: recoveredArg1 inNamespace: recoveredArg2
    ^nil
! !

"xxx_dyn.ic method 0x200019ac; bytecode file offset 0x62c08"
!SstWSSoapContentHandler methodsFor: 'recovered'!
soapFaultFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentElement.
    recoveredValue1 := (recoveredValue0) soapFaultFactory.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003530; bytecode file offset 0x64614"
!SstWSSoapContentHandler methodsFor: 'recovered'!
wsSstWSMessageContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) context.
    recoveredValue1 := WSMsgContext.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000a21c; bytecode file offset 0x6b338"
!SstWSSoapContentHandler methodsFor: 'recovered'!
wsBindingOperation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) wsSstWSMessageContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a4d0Arg1 | 
    | block2800a4d0Value0 block2800a4d0Value1 |
    block2800a4d0Value0 := block2800a4d0Arg1.
    block2800a4d0Value1 := (block2800a4d0Value0) bindingOperation.
    block2800a4d0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a264; bytecode file offset 0x6b338"
!SstWSSoapContentHandler methodsFor: 'recovered'!
wsServiceManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) wsContainer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a53cArg1 | 
    | block2800a53cValue0 block2800a53cValue1 |
    block2800a53cValue0 := block2800a53cArg1.
    block2800a53cValue1 := (block2800a53cValue0) serviceManager.
    block2800a53cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000bfa4; bytecode file offset 0x6d098"
!SstWSSoapContentHandler methodsFor: 'recovered'!
wsUrlContextKey
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) wsSstWSMessageContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a758Arg1 | 
    | block2800a758Value0 block2800a758Value1 block2800a758Value2 |
    block2800a758Value0 := block2800a758Arg1.
    block2800a758Value1 := WSUrlContextKey.
    block2800a758Value2 := (block2800a758Value0) propertyNamed: (block2800a758Value1).
    block2800a758Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000bfc0; bytecode file offset 0x6d098"
!SstWSSoapContentHandler methodsFor: 'recovered'!
wsContainer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) wsSstWSMessageContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a77cArg1 | 
    | block2800a77cValue0 block2800a77cValue1 block2800a77cValue2 |
    block2800a77cValue0 := block2800a77cArg1.
    block2800a77cValue1 := WSContainer.
    block2800a77cValue2 := (block2800a77cValue0) propertyNamed: (block2800a77cValue1).
    block2800a77cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000c9d8; bytecode file offset 0x6dab0"
!SstWSSoapContentHandler methodsFor: 'recovered'!
endDocument
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) deferSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferSet.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) initializeDeferredElements: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e348; bytecode file offset 0x6f418"
!SstWSSoapContentHandler methodsFor: 'recovered'!
initializeDeferredElements: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) initializeDeferredElement: (recoveredStack2) deferredSet: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001019c; bytecode file offset 0x71290"
!SstWSSoapContentHandler methodsFor: 'recovered'!
validateEndElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) endElementValidators.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (self) wsSstWSMessageContext.
    recoveredBlock6Value3 := (recoveredBlock6Value0) value: (recoveredBlock6Value1) value: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200101b8; bytecode file offset 0x71290"
!SstWSSoapContentHandler methodsFor: 'recovered'!
validateStartElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) startElementValidators.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (self) wsSstWSMessageContext.
    recoveredBlock6Value3 := (recoveredBlock6Value0) value: (recoveredBlock6Value1) value: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200149b8; bytecode file offset 0x75a98"
!SstWSSoapContentHandler methodsFor: 'recovered'!
startElement: recoveredArg1 rawName: recoveredArg2 uri: recoveredArg3 attributes: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            super startElement: (recoveredStack1) rawName: (recoveredStack2) uri: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) object.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsSoapArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) sstSoapArrayType: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018cc8; bytecode file offset 0x79dac"
!SstWSSoapContentHandler methodsFor: 'recovered'!
updateContextForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wsSstWSMessageContext.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) operation.
    recoveredBlock5Value3 := WSOperation.
    (recoveredBlock5Value0) addProperty: (recoveredBlock5Value2) named: (recoveredBlock5Value3).
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := recoveredArg1.
    (recoveredBlock5Value4) bindingOperation: (recoveredBlock5Value5).
    recoveredBlock5Value6 := recoveredBlock5Arg1.
    recoveredBlock5Value7 := recoveredArg1.
    recoveredBlock5Value8 := (recoveredBlock5Value7) name.
    recoveredBlock5Value9 := WSOperationName.
    recoveredBlock5Value10 := (recoveredBlock5Value6) addProperty: (recoveredBlock5Value8) named: (recoveredBlock5Value9).
    recoveredBlock5Value10
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2001a7fc; bytecode file offset 0x7b8d8"
!SstWSSoapContentHandler methodsFor: 'recovered'!
typeForElementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super typeForElementNamed: (recoveredValue0) inNamespace: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    ^recoveredBlock14Value0
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) currentElement.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := (self) context.
    recoveredBlock30Value2 := (recoveredBlock30Value0) sstSoapArrayType: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
    recoveredValue7 := (recoveredValue4) ifNotNil: (recoveredValue6).
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x2001c398; bytecode file offset 0x7d47c"
!SstWSSoapContentHandler methodsFor: 'recovered'!
initializeObjectFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitializeDeferred: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) href.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlMappedObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) deferProcessingFor: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := super initializeObjectFor: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200299ac; bytecode file offset 0x8aaa4"
!SstWSSoapContentHandler methodsFor: 'recovered'!
initializeDeferredElement: recoveredArg1 deferredSet: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) elements.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isMappedCollection.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 32] ifFalse: [recoveredBlock18PC := 83].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) elements.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block36Arg1 | 
    | recoveredBlock18Block36Value0 recoveredBlock18Block36Value1 recoveredBlock18Block36Value2 recoveredBlock18Block36Value3 recoveredBlock18Block36Value4 |
    recoveredBlock18Block36Value0 := recoveredBlock18Arg1.
    recoveredBlock18Block36Value1 := (recoveredBlock18Block36Value0) hrefElement.
    recoveredBlock18Block36Value2 := [:recoveredBlock18Block36Block47Arg1 | 
    | recoveredBlock18Block36Block47Stack0 recoveredBlock18Block36Block47Stack1 recoveredBlock18Block36Block47Stack2 recoveredBlock18Block36Block47Stack3 recoveredBlock18Block36Block47Stack4 recoveredBlock18Block36Block47PC recoveredBlock18Block36Block47Step recoveredBlock18Block36Block47Done recoveredBlock18Block36Block47Result |
    recoveredBlock18Block36Block47Stack0 := self.
    recoveredBlock18Block36Block47PC := 54.
    recoveredBlock18Block36Block47Done := false.
    [recoveredBlock18Block36Block47Done not] whileTrue: [
        recoveredBlock18Block36Block47Step := recoveredBlock18Block36Block47PC.
        recoveredBlock18Block36Block47Step = 54 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := nil.
            recoveredBlock18Block36Block47PC := 55.
        ].
        recoveredBlock18Block36Block47Step = 55 ifTrue: [
            recoveredBlock18Block36Block47Stack2 := recoveredArg2.
            recoveredBlock18Block36Block47PC := 58.
        ].
        recoveredBlock18Block36Block47Step = 58 ifTrue: [
            recoveredBlock18Block36Block47Stack3 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 59.
        ].
        recoveredBlock18Block36Block47Step = 59 ifTrue: [
            recoveredBlock18Block36Block47Stack2 := (recoveredBlock18Block36Block47Stack2) includes: (recoveredBlock18Block36Block47Stack3).
            recoveredBlock18Block36Block47PC := 61.
        ].
        recoveredBlock18Block36Block47Step = 61 ifTrue: [
            (recoveredBlock18Block36Block47Stack2) ifTrue: [recoveredBlock18Block36Block47PC := 64] ifFalse: [recoveredBlock18Block36Block47PC := 72].
        ].
        recoveredBlock18Block36Block47Step = 64 ifTrue: [
            recoveredBlock18Block36Block47PC := 65.
        ].
        recoveredBlock18Block36Block47Step = 65 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := self.
            recoveredBlock18Block36Block47PC := 66.
        ].
        recoveredBlock18Block36Block47Step = 66 ifTrue: [
            recoveredBlock18Block36Block47Stack2 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 67.
        ].
        recoveredBlock18Block36Block47Step = 67 ifTrue: [
            recoveredBlock18Block36Block47Stack3 := recoveredArg2.
            recoveredBlock18Block36Block47PC := 70.
        ].
        recoveredBlock18Block36Block47Step = 70 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) initializeDeferredElement: (recoveredBlock18Block36Block47Stack2) deferredSet: (recoveredBlock18Block36Block47Stack3).
            recoveredBlock18Block36Block47PC := 72.
        ].
        recoveredBlock18Block36Block47Step = 72 ifTrue: [
            recoveredBlock18Block36Block47Result := recoveredBlock18Block36Block47Stack1.
            recoveredBlock18Block36Block47Done := true.
        ].
    ].
    recoveredBlock18Block36Block47Result
].
    (recoveredBlock18Block36Value1) ifNotNil: (recoveredBlock18Block36Value2).
    recoveredBlock18Block36Value3 := recoveredBlock18Arg1.
    recoveredBlock18Block36Value4 := (recoveredBlock18Block36Value3) reinitializeObject.
    recoveredBlock18Block36Value4
].
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 83.
        ].
        recoveredBlock18Step = 83 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) hrefElement.
            recoveredBlock18PC := 88.
        ].
        recoveredBlock18Step = 88 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block88Arg1 | 
    | recoveredBlock18Block88Stack0 recoveredBlock18Block88Stack1 recoveredBlock18Block88Stack2 recoveredBlock18Block88Stack3 recoveredBlock18Block88Stack4 recoveredBlock18Block88PC recoveredBlock18Block88Step recoveredBlock18Block88Done recoveredBlock18Block88Result |
    recoveredBlock18Block88Stack0 := self.
    recoveredBlock18Block88PC := 94.
    recoveredBlock18Block88Done := false.
    [recoveredBlock18Block88Done not] whileTrue: [
        recoveredBlock18Block88Step := recoveredBlock18Block88PC.
        recoveredBlock18Block88Step = 94 ifTrue: [
            recoveredBlock18Block88Stack1 := nil.
            recoveredBlock18Block88PC := 95.
        ].
        recoveredBlock18Block88Step = 95 ifTrue: [
            recoveredBlock18Block88Stack2 := recoveredArg2.
            recoveredBlock18Block88PC := 98.
        ].
        recoveredBlock18Block88Step = 98 ifTrue: [
            recoveredBlock18Block88Stack3 := recoveredBlock18Block88Arg1.
            recoveredBlock18Block88PC := 99.
        ].
        recoveredBlock18Block88Step = 99 ifTrue: [
            recoveredBlock18Block88Stack2 := (recoveredBlock18Block88Stack2) includes: (recoveredBlock18Block88Stack3).
            recoveredBlock18Block88PC := 101.
        ].
        recoveredBlock18Block88Step = 101 ifTrue: [
            (recoveredBlock18Block88Stack2) ifTrue: [recoveredBlock18Block88PC := 104] ifFalse: [recoveredBlock18Block88PC := 112].
        ].
        recoveredBlock18Block88Step = 104 ifTrue: [
            recoveredBlock18Block88PC := 105.
        ].
        recoveredBlock18Block88Step = 105 ifTrue: [
            recoveredBlock18Block88Stack1 := self.
            recoveredBlock18Block88PC := 106.
        ].
        recoveredBlock18Block88Step = 106 ifTrue: [
            recoveredBlock18Block88Stack2 := recoveredBlock18Block88Arg1.
            recoveredBlock18Block88PC := 107.
        ].
        recoveredBlock18Block88Step = 107 ifTrue: [
            recoveredBlock18Block88Stack3 := recoveredArg2.
            recoveredBlock18Block88PC := 110.
        ].
        recoveredBlock18Block88Step = 110 ifTrue: [
            recoveredBlock18Block88Stack1 := (recoveredBlock18Block88Stack1) initializeDeferredElement: (recoveredBlock18Block88Stack2) deferredSet: (recoveredBlock18Block88Stack3).
            recoveredBlock18Block88PC := 112.
        ].
        recoveredBlock18Block88Step = 112 ifTrue: [
            recoveredBlock18Block88Result := recoveredBlock18Block88Stack1.
            recoveredBlock18Block88Done := true.
        ].
    ].
    recoveredBlock18Block88Result
].
            recoveredBlock18PC := 113.
        ].
        recoveredBlock18Step = 113 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) ifNotNil: (recoveredBlock18Stack2).
            recoveredBlock18PC := 115.
        ].
        recoveredBlock18Step = 115 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) context.
    recoveredValue8 := (recoveredValue7) deserializer.
    (recoveredValue6) initializeObjectUsing: (recoveredValue8).
    ^self
! !

