"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000858; bytecode file offset 0x619a4"
!SstWsdlBindingOperation methodsFor: 'recovered'!
schemaType
    | recoveredValue0 |
    recoveredValue0 := (self) inputSchemaType.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200012b8; bytecode file offset 0x626a4"
!SstWsdlBindingOperation methodsFor: 'recovered'!
subElementSelectors
    ^#('input' 'output' 'fault')
! !

"xxx_dyn.ic method 0x2000198c; bytecode file offset 0x62c08"
!SstWsdlBindingOperation methodsFor: 'recovered'!
outputSchemaType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operation.
    recoveredValue1 := (recoveredValue0) outputSchemaType.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001a5c; bytecode file offset 0x62c08"
!SstWsdlBindingOperation methodsFor: 'recovered'!
selector
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operation.
    recoveredValue1 := (recoveredValue0) selector.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001a7c; bytecode file offset 0x62c08"
!SstWsdlBindingOperation methodsFor: 'recovered'!
inputSchemaType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operation.
    recoveredValue1 := (recoveredValue0) inputSchemaType.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003634; bytecode file offset 0x64704"
!SstWsdlBindingOperation methodsFor: 'recovered'!
operation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) binding.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue0) operationNamed: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004110; bytecode file offset 0x65264"
!SstWsdlBindingOperation methodsFor: 'recovered'!
binding
    | recoveredValue0 |
    recoveredValue0 := binding.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200041c4; bytecode file offset 0x65328"
!SstWsdlBindingOperation methodsFor: 'recovered'!
input
    | recoveredValue0 |
    recoveredValue0 := input.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200042b8; bytecode file offset 0x65384"
!SstWsdlBindingOperation methodsFor: 'recovered'!
output
    | recoveredValue0 |
    recoveredValue0 := output.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200042f4; bytecode file offset 0x653d8"
!SstWsdlBindingOperation methodsFor: 'recovered'!
faults
    | recoveredValue0 |
    recoveredValue0 := faults.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004f2c; bytecode file offset 0x66010"
!SstWsdlBindingOperation methodsFor: 'recovered'!
argumentsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) input.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) elements.
    recoveredValue3 := (recoveredValue0) argumentsFrom: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200060ac; bytecode file offset 0x671b8"
!SstWsdlBindingOperation methodsFor: 'recovered'!
selector: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operation.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) selector: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20008658; bytecode file offset 0x6978c"
!SstWsdlBindingOperation methodsFor: 'recovered'!
binding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    binding := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200086ec; bytecode file offset 0x69858"
!SstWsdlBindingOperation methodsFor: 'recovered'!
input: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    input := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200087d0; bytecode file offset 0x698bc"
!SstWsdlBindingOperation methodsFor: 'recovered'!
output: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    output := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000881c; bytecode file offset 0x69910"
!SstWsdlBindingOperation methodsFor: 'recovered'!
faults: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    faults := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a708; bytecode file offset 0x6b7fc"
!SstWsdlBindingOperation methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) faults: (recoveredValue1).
    super initialize.
    ^self
! !

"xxx_dyn.ic method 0x2001010c; bytecode file offset 0x71210"
!SstWsdlBindingOperation methodsFor: 'recovered'!
faultNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) faults.
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

"xxx_dyn.ic method 0x20015b70; bytecode file offset 0x76c48"
!SstWsdlBindingOperation methodsFor: 'recovered'!
faultNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) faults.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
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
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) namespace.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2001f64c; bytecode file offset 0x80734"
!SstWsdlBindingOperation methodsFor: 'recovered'!
printSubElementsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) input.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) abtXmlPrintOn: (recoveredBlock5Value1) tagName: ('input').
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) output.
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) abtXmlPrintOn: (recoveredBlock26Value1) tagName: ('output').
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

