"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000e9e8; bytecode file offset 0x6fac0"
!SstWSSoapDeserializationHandler methodsFor: 'recovered'!
currentErrorElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SstSoapMappedElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'error'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlName: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) root.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ddb8; bytecode file offset 0x7eeac"
!SstWSSoapDeserializationHandler methodsFor: 'recovered'!
parserFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) container.
    recoveredValue2 := (recoveredValue1) serializationManager.
    recoveredValue3 := SstSoapDefaultEnvelopeNamespace.
    recoveredValue4 := (recoveredValue2) deserializationConfigurationNamed: (recoveredValue3).
    recoveredValue5 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := AbtXmlDeserializationConfiguration.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) newSoapConfiguration: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    recoveredValue6 := (recoveredValue4) ifNil: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := AbtXmlMappingParser.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) usingConfiguration: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) context.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := WSMsgContext.
    (recoveredValue11) addProperty: (recoveredValue12) named: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"xxx_dyn.ic method 0x20029cec; bytecode file offset 0x8adf0"
!SstWSSoapDeserializationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) container.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationManager.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentParserInput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) parserFor: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) parse: (recoveredBlock35Value1).
    recoveredBlock35Value3 := recoveredBlock35Value2.
    recoveredLocal3 := recoveredBlock35Value3.
    recoveredBlock35Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := SgmlException.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Local1 recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 recoveredBlock57Value8 recoveredBlock57Value9 |
    recoveredBlock57Value0 := recoveredLocal2.
    recoveredBlock57Value1 := (recoveredBlock57Value0) contentHandler.
    recoveredBlock57Value2 := (recoveredBlock57Value1) currentElement.
    recoveredBlock57Value3 := (self) currentErrorElement: (recoveredBlock57Value2).
    recoveredBlock57Local1 := recoveredBlock57Value3.
    recoveredBlock57Value4 := recoveredArg1.
    recoveredBlock57Value5 := recoveredBlock57Local1.
    (recoveredBlock57Value4) currentMessage: (recoveredBlock57Value5).
    recoveredBlock57Value6 := recoveredBlock57Arg1.
    recoveredBlock57Value7 := (recoveredBlock57Value6) argument.
    recoveredBlock57Value8 := (recoveredBlock57Value7) printString.
    recoveredBlock57Value9 := (self) error: (recoveredBlock57Value8).
    recoveredBlock57Value9
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := ExError.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Local1 recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 recoveredBlock91Value5 recoveredBlock91Value6 recoveredBlock91Value7 |
    recoveredBlock91Value0 := recoveredLocal2.
    recoveredBlock91Value1 := (recoveredBlock91Value0) contentHandler.
    recoveredBlock91Value2 := (recoveredBlock91Value1) currentElement.
    recoveredBlock91Value3 := (self) currentErrorElement: (recoveredBlock91Value2).
    recoveredBlock91Local1 := recoveredBlock91Value3.
    recoveredBlock91Value4 := recoveredArg1.
    recoveredBlock91Value5 := recoveredBlock91Local1.
    (recoveredBlock91Value4) currentMessage: (recoveredBlock91Value5).
    recoveredBlock91Value6 := recoveredBlock91Arg1.
    recoveredBlock91Value7 := (recoveredBlock91Value6) signal.
    recoveredBlock91Value7
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2) when: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) currentMessage: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

