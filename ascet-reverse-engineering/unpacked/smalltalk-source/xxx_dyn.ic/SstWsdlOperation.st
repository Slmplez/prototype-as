"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001564; bytecode file offset 0x626a4"
!SstWsdlOperation methodsFor: 'recovered'!
subElementSelectors
    ^#('input' 'output' 'faults')
! !

"xxx_dyn.ic method 0x20002fac; bytecode file offset 0x64108"
!SstWsdlOperation methodsFor: 'recovered'!
addFault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) faults.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004178; bytecode file offset 0x65264"
!SstWsdlOperation methodsFor: 'recovered'!
transmissionPrimitive
    | recoveredValue0 |
    recoveredValue0 := transmissionPrimitive.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200042fc; bytecode file offset 0x653d8"
!SstWsdlOperation methodsFor: 'recovered'!
faults
    | recoveredValue0 |
    recoveredValue0 := faults.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004340; bytecode file offset 0x65414"
!SstWsdlOperation methodsFor: 'recovered'!
selector
    | recoveredValue0 |
    recoveredValue0 := selector.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000437c; bytecode file offset 0x65450"
!SstWsdlOperation methodsFor: 'recovered'!
parameterOrder
    | recoveredValue0 |
    recoveredValue0 := parameterOrder.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004f40; bytecode file offset 0x66010"
!SstWsdlOperation methodsFor: 'recovered'!
argumentsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) input.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) arguments.
    recoveredValue3 := (recoveredValue0) argumentsFrom: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200085d8; bytecode file offset 0x6978c"
!SstWsdlOperation methodsFor: 'recovered'!
transmissionPrimitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transmissionPrimitive := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200086f4; bytecode file offset 0x69858"
!SstWsdlOperation methodsFor: 'recovered'!
input: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    input := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200087d8; bytecode file offset 0x698bc"
!SstWsdlOperation methodsFor: 'recovered'!
output: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    output := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008824; bytecode file offset 0x69910"
!SstWsdlOperation methodsFor: 'recovered'!
faults: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    faults := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008870; bytecode file offset 0x6994c"
!SstWsdlOperation methodsFor: 'recovered'!
selector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selector := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200088b4; bytecode file offset 0x69980"
!SstWsdlOperation methodsFor: 'recovered'!
parameterOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameterOrder := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a0fc; bytecode file offset 0x6b1c8"
!SstWsdlOperation methodsFor: 'recovered'!
isRequestResponseOperation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) input.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) output.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a11c; bytecode file offset 0x6b1e8"
!SstWsdlOperation methodsFor: 'recovered'!
isOneWayOperation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) input.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) output.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a13c; bytecode file offset 0x6b228"
!SstWsdlOperation methodsFor: 'recovered'!
inputSchemaType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) input.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) input.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a15c; bytecode file offset 0x6b228"
!SstWsdlOperation methodsFor: 'recovered'!
outputSchemaType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) output.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) output.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ab58; bytecode file offset 0x6bc84"
!SstWsdlOperation methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) faults: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000e7ac; bytecode file offset 0x6f87c"
!SstWsdlOperation methodsFor: 'recovered'!
input
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := input.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsWsdlObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := input.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'messages'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolve: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            input := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := input.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e7d8; bytecode file offset 0x6f8a8"
!SstWsdlOperation methodsFor: 'recovered'!
output
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := output.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsWsdlObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := output.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'messages'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolve: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            output := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := output.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20012400; bytecode file offset 0x734d8"
!SstWsdlOperation methodsFor: 'recovered'!
setName: recoveredArg1 namespace: recoveredArg2 input: recoveredArg3 output: recoveredArg4 fault: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) name: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) namespace: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    (self) input: (recoveredValue2).
    recoveredValue3 := recoveredArg4.
    (self) output: (recoveredValue3).
    recoveredValue4 := recoveredArg5.
    (self) addFault: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2001f620; bytecode file offset 0x80734"
!SstWsdlOperation methodsFor: 'recovered'!
printSubElementsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) input.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) abtXmlPrintReferenceOn: (recoveredBlock5Value1) tagName: ('input').
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) output.
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) abtXmlPrintReferenceOn: (recoveredBlock26Value1) tagName: ('output').
    recoveredBlock26Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) faults.
    recoveredValue5 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredArg1.
    recoveredBlock46Value2 := (recoveredBlock46Value0) abtXmlPrintOn: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x20023774; bytecode file offset 0x84850"
!SstWsdlOperation methodsFor: 'recovered'!
messageNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) input.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) name.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) output.
    recoveredValue3 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) name.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack3 := recoveredArg1.
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) = (recoveredBlock30Stack3).
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 46] ifFalse: [recoveredBlock30PC := 49].
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            ^recoveredBlock30Stack1
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) faults.
    recoveredValue5 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := nil.
            recoveredBlock55PC := 63.
        ].
        recoveredBlock55Step = 63 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) name.
            recoveredBlock55PC := 65.
        ].
        recoveredBlock55Step = 65 ifTrue: [
            recoveredBlock55Stack3 := recoveredArg1.
            recoveredBlock55PC := 68.
        ].
        recoveredBlock55Step = 68 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) = (recoveredBlock55Stack3).
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            (recoveredBlock55Stack2) ifTrue: [recoveredBlock55PC := 72] ifFalse: [recoveredBlock55PC := 75].
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Arg1.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^nil
! !

