"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200014d4; bytecode file offset 0x626a4"
!SstWsdlBinding methodsFor: 'recovered'!
subElementSelectors
    ^#('operations')
! !

"xxx_dyn.ic method 0x20001650; bytecode file offset 0x62724"
!SstWsdlBinding methodsFor: 'recovered'!
isSoapBinding
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) soapBindingExtension.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200041cc; bytecode file offset 0x65328"
!SstWsdlBinding methodsFor: 'recovered'!
operations
    | recoveredValue0 |
    recoveredValue0 := operations.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005c5c; bytecode file offset 0x66d78"
!SstWsdlBinding methodsFor: 'recovered'!
operationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) operationNamed: (recoveredValue0) withArguments: (#()).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200062f4; bytecode file offset 0x67530"
!SstWsdlBinding methodsFor: 'recovered'!
operationNamed: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) operationNamed: (recoveredValue1) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006738; bytecode file offset 0x6781c"
!SstWsdlBinding methodsFor: 'recovered'!
soapBindingExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) soapExtensionNamespaceUri.
    recoveredValue1 := (self) extensionNamed: ('binding') namespaceUri: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200077a8; bytecode file offset 0x6887c"
!SstWsdlBinding methodsFor: 'recovered'!
attributeSelectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super attributeSelectors.
    recoveredValue1 := (recoveredValue0) , (#('type')).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200085f8; bytecode file offset 0x6978c"
!SstWsdlBinding methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009cac; bytecode file offset 0x6ad7c"
!SstWsdlBinding methodsFor: 'recovered'!
addOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) operations.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) binding: (self).
    ^self
! !

"xxx_dyn.ic method 0x2000a724; bytecode file offset 0x6b7fc"
!SstWsdlBinding methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) operations: (recoveredValue1).
    super initialize.
    ^self
! !

"xxx_dyn.ic method 0x2000e76c; bytecode file offset 0x6f850"
!SstWsdlBinding methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
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
            recoveredStack2 := type.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'portTypes'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolve: (recoveredStack2) usingSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20010320; bytecode file offset 0x713f4"
!SstWsdlBinding methodsFor: 'recovered'!
bindingOperationNamed: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) operations.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20010a60; bytecode file offset 0x71b34"
!SstWsdlBinding methodsFor: 'recovered'!
bindingOperationFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) operations.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) name.
    recoveredBlock5Value4 := (recoveredBlock5Value1) = (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20013e4c; bytecode file offset 0x74f1c"
!SstWsdlBinding methodsFor: 'recovered'!
operations: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    operations := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := [:recoveredBlock8Block15Arg1 | 
    | recoveredBlock8Block15Value0 recoveredBlock8Block15Value1 |
    recoveredBlock8Block15Value0 := recoveredBlock8Block15Arg1.
    recoveredBlock8Block15Value1 := (recoveredBlock8Block15Value0) binding: (self).
    recoveredBlock8Block15Value1
].
    recoveredBlock8Value2 := (recoveredBlock8Value0) do: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

