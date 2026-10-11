"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000aea8; bytecode file offset 0x6bf70"
!SstWSBodyProcessor methodsFor: 'recovered'!
extensionForMessage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapBodyExtension.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e0c8; bytecode file offset 0x6f1ac"
!SstWSBodyProcessor methodsFor: 'recovered'!
missingImplementationFor: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SstSoapFault.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) serverFault: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtXmlName.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := ('Implementation not available for %1') bindWith: (recoveredValue5).
    recoveredValue7 := (recoveredValue2) faultString: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) raise.
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x20015d24; bytecode file offset 0x76e00"
!SstWSBodyProcessor methodsFor: 'recovered'!
saveResult: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'wsOperation'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) output.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) addResult: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20025134; bytecode file offset 0x8621c"
!SstWSBodyProcessor methodsFor: 'recovered'!
elementsToBeProcessed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstSoapBodyString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportedOperationsFromBlockNamed: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindingOperation.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := (recoveredBlock32Value0) localName.
    recoveredBlock32Value2 := recoveredLocal2.
    recoveredBlock32Value3 := (recoveredBlock32Value2) name.
    recoveredBlock32Value4 := (recoveredBlock32Value1) = (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) chooseMessageElementsFrom: (recoveredStack1) bindingOperation: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20026db8; bytecode file offset 0x87eb8"
!SstWSBodyProcessor methodsFor: 'recovered'!
chooseMessageElementsFrom: recoveredArg1 bindingOperation: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) activeMessageExtension: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) parts.
    recoveredLocal5 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) operation.
    recoveredValue8 := (recoveredValue7) input.
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredLocal5.
    recoveredValue10 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 |
    recoveredBlock37Value0 := recoveredLocal3.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) partNamed: (recoveredBlock37Value1).
    recoveredBlock37Value3 := [:recoveredBlock37Block50Arg1 | 
    | recoveredBlock37Block50Stack0 recoveredBlock37Block50Stack1 recoveredBlock37Block50Stack2 recoveredBlock37Block50Stack3 recoveredBlock37Block50PC recoveredBlock37Block50Step recoveredBlock37Block50Done recoveredBlock37Block50Result |
    recoveredBlock37Block50Stack0 := nil.
    recoveredBlock37Block50PC := 56.
    recoveredBlock37Block50Done := false.
    [recoveredBlock37Block50Done not] whileTrue: [
        recoveredBlock37Block50Step := recoveredBlock37Block50PC.
        recoveredBlock37Block50Step = 56 ifTrue: [
            recoveredBlock37Block50Stack1 := nil.
            recoveredBlock37Block50PC := 57.
        ].
        recoveredBlock37Block50Step = 57 ifTrue: [
            recoveredBlock37Block50Stack2 := recoveredBlock37Block50Arg1.
            recoveredBlock37Block50PC := 58.
        ].
        recoveredBlock37Block50Step = 58 ifTrue: [
            recoveredBlock37Block50Stack2 := (recoveredBlock37Block50Stack2) element.
            recoveredBlock37Block50PC := 60.
        ].
        recoveredBlock37Block50Step = 60 ifTrue: [
            (recoveredBlock37Block50Stack2 == nil) ifTrue: [recoveredBlock37Block50PC := 73] ifFalse: [recoveredBlock37Block50PC := 64].
        ].
        recoveredBlock37Block50Step = 64 ifTrue: [
            recoveredBlock37Block50PC := 65.
        ].
        recoveredBlock37Block50Step = 65 ifTrue: [
            recoveredBlock37Block50Stack1 := recoveredLocal4.
            recoveredBlock37Block50PC := 68.
        ].
        recoveredBlock37Block50Step = 68 ifTrue: [
            recoveredBlock37Block50Stack2 := recoveredBlock37Block50Arg1.
            recoveredBlock37Block50PC := 69.
        ].
        recoveredBlock37Block50Step = 69 ifTrue: [
            recoveredBlock37Block50Stack2 := (recoveredBlock37Block50Stack2) typeObject.
            recoveredBlock37Block50PC := 71.
        ].
        recoveredBlock37Block50Step = 71 ifTrue: [
            recoveredBlock37Block50Stack1 := (recoveredBlock37Block50Stack1) add: (recoveredBlock37Block50Stack2).
            recoveredBlock37Block50PC := 73.
        ].
        recoveredBlock37Block50Step = 73 ifTrue: [
            recoveredBlock37Block50Result := recoveredBlock37Block50Stack1.
            recoveredBlock37Block50Done := true.
        ].
    ].
    recoveredBlock37Block50Result
].
    recoveredBlock37Value4 := (recoveredBlock37Value2) ifNotNil: (recoveredBlock37Value3).
    recoveredBlock37Value4
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 |
    recoveredBlock82Value0 := recoveredLocal4.
    recoveredBlock82Value1 := recoveredBlock82Arg1.
    recoveredBlock82Value2 := (recoveredBlock82Value1) type.
    recoveredBlock82Value3 := (recoveredBlock82Value0) includes: (recoveredBlock82Value2).
    recoveredBlock82Value3
].
    recoveredValue13 := (recoveredValue11) select: (recoveredValue12).
    ^recoveredValue13
! !

