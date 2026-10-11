"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000efc; bytecode file offset 0x6209c"
!SstSoapEnvelope methodsFor: 'recovered'!
elementName
    | recoveredValue0 |
    recoveredValue0 := SstSoapEnvelopeString.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000215c; bytecode file offset 0x63558"
!SstSoapEnvelope methodsFor: 'recovered'!
header
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapHeaderString.
    recoveredValue1 := (self) elementNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200021ec; bytecode file offset 0x63558"
!SstSoapEnvelope methodsFor: 'recovered'!
body
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapBodyString.
    recoveredValue1 := (self) elementNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004758; bytecode file offset 0x6592c"
!SstSoapEnvelope methodsFor: 'recovered'!
sstIsSoapEnvelope
    ^true
! !

"xxx_dyn.ic method 0x200053c4; bytecode file offset 0x664a8"
!SstSoapEnvelope methodsFor: 'recovered'!
abtXmlPrintStringWithXmlDeclaration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) abtXmlPrintString.
    recoveredValue1 := ('<?xml version="1.0" encoding="UTF-8"?>') , (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000cde0; bytecode file offset 0x6dec4"
!SstSoapEnvelope methodsFor: 'recovered'!
headerElements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000cdf4; bytecode file offset 0x6dec4"
!SstSoapEnvelope methodsFor: 'recovered'!
bodyElements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) body.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000fd40; bytecode file offset 0x70e20"
!SstSoapEnvelope methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := (self) defaultNamespaceUri.
    (self) namespaceUri: (recoveredValue0).
    recoveredValue1 := (self) soapEnvPrefix.
    recoveredValue2 := (self) namespaceUri.
    (self) declarePrefix: (recoveredValue1) uri: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2001055c; bytecode file offset 0x71634"
!SstSoapEnvelope methodsFor: 'recovered'!
addHeaderElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := SstSoapHeader.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) header: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001b5ac; bytecode file offset 0x7c698"
!SstSoapEnvelope methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) tab.
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) nextPutAll: ('header: ').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) header.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) tab.
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) nextPutAll: ('body: ').
    recoveredValue11 := (self) body.
    recoveredValue12 := (recoveredValue11) printString.
    (recoveredValue1) nextPutAll: (recoveredValue12).
    ^self
! !

"xxx_dyn.ic method 0x2001cb48; bytecode file offset 0x7dc2c"
!SstSoapEnvelope methodsFor: 'recovered'!
header: recoveredArg1
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) header.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 29] ifFalse: [recoveredBlock4PC := 20].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) elements.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack2 := [].
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack0) remove: (recoveredBlock4Stack1) ifAbsent: (recoveredBlock4Stack2).
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block32Arg1 | 
    | recoveredBlock4Block32Value0 recoveredBlock4Block32Value1 recoveredBlock4Block32Value2 recoveredBlock4Block32Value3 |
    recoveredBlock4Block32Value0 := recoveredBlock4Block32Arg1.
    (recoveredBlock4Block32Value0) parent: (self).
    recoveredBlock4Block32Value1 := (self) elements.
    recoveredBlock4Block32Value2 := recoveredBlock4Block32Arg1.
    recoveredBlock4Block32Value3 := (recoveredBlock4Block32Value1) addFirst: (recoveredBlock4Block32Value2).
    recoveredBlock4Block32Value3
].
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2001f8dc; bytecode file offset 0x809d0"
!SstSoapEnvelope methodsFor: 'recovered'!
initializeUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super initializeUsing: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := WSRequest.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyNamed: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceUri.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := WSService.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyNamed: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstSoapEnvelopeNamespace.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) namespaceUri: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapEnvPrefix.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) declarePrefix: (recoveredStack1) uri: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := SstWSEncodingStrategy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) initializeEnvelope: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20023418; bytecode file offset 0x84504"
!SstSoapEnvelope methodsFor: 'recovered'!
body: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) body.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 27] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) elements.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := [].
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack0) remove: (recoveredBlock4Stack1) ifAbsent: (recoveredBlock4Stack2).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block30Arg1 | 
    | recoveredBlock4Block30Stack0 recoveredBlock4Block30Stack1 recoveredBlock4Block30Stack2 recoveredBlock4Block30Stack3 recoveredBlock4Block30PC recoveredBlock4Block30Step recoveredBlock4Block30Done recoveredBlock4Block30Result |
    recoveredBlock4Block30Stack0 := self.
    recoveredBlock4Block30PC := 36.
    recoveredBlock4Block30Done := false.
    [recoveredBlock4Block30Done not] whileTrue: [
        recoveredBlock4Block30Step := recoveredBlock4Block30PC.
        recoveredBlock4Block30Step = 36 ifTrue: [
            recoveredBlock4Block30Stack1 := recoveredArg1.
            recoveredBlock4Block30PC := 39.
        ].
        recoveredBlock4Block30Step = 39 ifTrue: [
            recoveredBlock4Block30Stack2 := self.
            recoveredBlock4Block30PC := 40.
        ].
        recoveredBlock4Block30Step = 40 ifTrue: [
            (recoveredBlock4Block30Stack1) parent: (recoveredBlock4Block30Stack2).
            recoveredBlock4Block30PC := 42.
        ].
        recoveredBlock4Block30Step = 42 ifTrue: [
            recoveredBlock4Block30Stack0 := (recoveredBlock4Block30Stack0) header.
            recoveredBlock4Block30PC := 44.
        ].
        recoveredBlock4Block30Step = 44 ifTrue: [
            recoveredBlock4Block30Stack1 := recoveredBlock4Block30Stack0.
            recoveredBlock4Block30PC := 45.
        ].
        recoveredBlock4Block30Step = 45 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block30Stack1.
            recoveredBlock4Block30PC := 48.
        ].
        recoveredBlock4Block30Step = 48 ifTrue: [
            (recoveredBlock4Block30Stack0 ~~ nil) ifTrue: [recoveredBlock4Block30PC := 62] ifFalse: [recoveredBlock4Block30PC := 52].
        ].
        recoveredBlock4Block30Step = 52 ifTrue: [
            recoveredBlock4Block30Stack0 := self.
            recoveredBlock4Block30PC := 53.
        ].
        recoveredBlock4Block30Step = 53 ifTrue: [
            recoveredBlock4Block30Stack0 := (recoveredBlock4Block30Stack0) elements.
            recoveredBlock4Block30PC := 54.
        ].
        recoveredBlock4Block30Step = 54 ifTrue: [
            recoveredBlock4Block30Stack1 := recoveredArg1.
            recoveredBlock4Block30PC := 57.
        ].
        recoveredBlock4Block30Step = 57 ifTrue: [
            recoveredBlock4Block30Stack0 := (recoveredBlock4Block30Stack0) addFirst: (recoveredBlock4Block30Stack1).
            recoveredBlock4Block30PC := 59.
        ].
        recoveredBlock4Block30Step = 59 ifTrue: [
            recoveredBlock4Block30PC := 72.
        ].
        recoveredBlock4Block30Step = 62 ifTrue: [
            recoveredBlock4Block30Stack0 := self.
            recoveredBlock4Block30PC := 63.
        ].
        recoveredBlock4Block30Step = 63 ifTrue: [
            recoveredBlock4Block30Stack0 := (recoveredBlock4Block30Stack0) elements.
            recoveredBlock4Block30PC := 64.
        ].
        recoveredBlock4Block30Step = 64 ifTrue: [
            recoveredBlock4Block30Stack1 := recoveredArg1.
            recoveredBlock4Block30PC := 67.
        ].
        recoveredBlock4Block30Step = 67 ifTrue: [
            recoveredBlock4Block30Stack2 := recoveredLocal2.
            recoveredBlock4Block30PC := 70.
        ].
        recoveredBlock4Block30Step = 70 ifTrue: [
            recoveredBlock4Block30Stack0 := (recoveredBlock4Block30Stack0) add: (recoveredBlock4Block30Stack1) after: (recoveredBlock4Block30Stack2).
            recoveredBlock4Block30PC := 72.
        ].
        recoveredBlock4Block30Step = 72 ifTrue: [
            recoveredBlock4Block30Result := recoveredBlock4Block30Stack0.
            recoveredBlock4Block30Done := true.
        ].
    ].
    recoveredBlock4Block30Result
].
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

