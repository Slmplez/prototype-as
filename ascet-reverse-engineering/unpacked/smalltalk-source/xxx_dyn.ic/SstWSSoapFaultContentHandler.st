"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20023fec; bytecode file offset 0x850d0"
!SstWSSoapFaultContentHandler methodsFor: 'recovered'!
typeForElementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg1.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack2 := SstSoapFaultDetailString.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) = (recoveredBlock31Stack2).
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 48] ifFalse: [recoveredBlock31PC := 60].
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg2.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) typeFromWsdlName: (recoveredBlock31Stack2) inNamespace: (recoveredBlock31Stack3).
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 60 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) objectCache.
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 66.
        ].
        recoveredBlock31Step = 66 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg2.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) typeNamed: (recoveredBlock31Stack2) inNamespace: (recoveredBlock31Stack3).
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 71 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 72.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack2.
            recoveredBlock31PC := 75.
        ].
        recoveredBlock31Step = 75 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20029450; bytecode file offset 0x8a540"
!SstWSSoapFaultContentHandler methodsFor: 'recovered'!
typeFromWsdlName: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) wsBindingOperation.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) faultNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) soapFaultExtension.
    recoveredLocal3 := recoveredBlock37Value1.
    recoveredLocal2 := 'fault'.
    'fault'
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := SstWSEncodingStrategy.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMessage: (recoveredStack1) bindingOperation: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 recoveredBlock68Value5 recoveredBlock68Value6 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := recoveredArg1.
    recoveredBlock68Value2 := recoveredArg2.
    recoveredBlock68Value3 := recoveredLocal2.
    recoveredBlock68Value4 := recoveredLocal3.
    recoveredBlock68Value5 := recoveredLocal4.
    recoveredBlock68Value6 := (recoveredBlock68Value0) typeNamed: (recoveredBlock68Value1) inNamespace: (recoveredBlock68Value2) messageType: (recoveredBlock68Value3) messageExtension: (recoveredBlock68Value4) bindingOperation: (recoveredBlock68Value5).
    recoveredBlock68Value6
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectCache.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

