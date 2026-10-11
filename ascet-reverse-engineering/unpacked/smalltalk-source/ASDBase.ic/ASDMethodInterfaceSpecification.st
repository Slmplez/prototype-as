"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200194c0; bytecode file offset 0x92209c"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
dbXmlType
    ^'methodInterface'
! !

"ASDBase.ic method 0x200246bc; bytecode file offset 0x92209c"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
apiDiagramTypes
    ^#('ClientServerInterface')
! !

"ASDBase.ic method 0x200381d8; bytecode file offset 0x934b68"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'MethodInterface'
! !

"ASDBase.ic method 0x2003eb08; bytecode file offset 0x93bf94"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
logicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGEmptyModel.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006791c; bytecode file offset 0x9646f8"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
specificationName
    | recoveredValue0 |
    recoveredValue0 := specificationName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078a84; bytecode file offset 0x9757c8"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
isMethodInterfaceSpecification
    ^true
! !

"ASDBase.ic method 0x20165cac; bytecode file offset 0xa62574"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) internalWriteXMLHeader: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) openComplex: ('MethodInterfaceSpecification').
    recoveredValue2 := recoveredArg1.
    (self) internalWriteXMLMethods: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201d83f0; bytecode file offset 0xad4cb8"
!ASDMethodInterfaceSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isClientServerInterface.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := ASDClientServerInterfaceView.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := ASDMethodInterfaceView.
    ^recoveredValue2
! !

