"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006be80; bytecode file offset 0x96873c"
!DBXmlImportDescSpec methodsFor: 'recovered'!
spec
    | recoveredValue0 |
    recoveredValue0 := spec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c43c; bytecode file offset 0x9692b0"
!DBXmlImportDescSpec methodsFor: 'recovered'!
logicModel
    | recoveredValue0 |
    recoveredValue0 := logicModelImportDesc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202302d8; bytecode file offset 0xb2cbac"
!DBXmlImportDescSpec methodsFor: 'recovered'!
dbXmlClearModifyRecursive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_345906'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280dcee4Arg1 | 
    | block280dcee4Stack0 block280dcee4Stack1 block280dcee4Stack2 block280dcee4Stack3 block280dcee4PC block280dcee4Step block280dcee4Done block280dcee4Result |
    block280dcee4Stack0 := self.
    block280dcee4PC := 4.
    block280dcee4Done := false.
    [block280dcee4Done not] whileTrue: [
        block280dcee4Step := block280dcee4PC.
        block280dcee4Step = 4 ifTrue: [
            block280dcee4Stack1 := nil.
            block280dcee4PC := 5.
        ].
        block280dcee4Step = 5 ifTrue: [
            block280dcee4Stack2 := block280dcee4Arg1.
            block280dcee4PC := 6.
        ].
        block280dcee4Step = 6 ifTrue: [
            (block280dcee4Stack2 == nil) ifTrue: [block280dcee4PC := 14] ifFalse: [block280dcee4PC := 10].
        ].
        block280dcee4Step = 10 ifTrue: [
            block280dcee4PC := 11.
        ].
        block280dcee4Step = 11 ifTrue: [
            block280dcee4Stack1 := block280dcee4Arg1.
            block280dcee4PC := 12.
        ].
        block280dcee4Step = 12 ifTrue: [
            block280dcee4Stack1 := (block280dcee4Stack1) clearModify.
            block280dcee4PC := 14.
        ].
        block280dcee4Step = 14 ifTrue: [
            block280dcee4Result := block280dcee4Stack1.
            block280dcee4Done := true.
        ].
    ].
    block280dcee4Result
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202945e0; bytecode file offset 0xb90eb4"
!DBXmlImportDescSpec methodsFor: 'recovered'!
buildEmptySpec
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := methods.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := parent.
    recoveredBlock6Value1 := (recoveredBlock6Value0) protoItem.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) xmlMethodByName: (recoveredBlock6Value2).
    recoveredBlock6Value4 := (recoveredBlock6Value3) thing.
    recoveredBlock6Value4
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asArray.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := specClass.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := parent.
    recoveredValue7 := (recoveredValue6) proxy.
    recoveredValue8 := name.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue5) xmlInit: (recoveredValue7) name: (recoveredValue8) methods: (recoveredValue9) importDesc: (self).
    spec := recoveredValue10.
    recoveredValue11 := spec.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2035efa8; bytecode file offset 0xc5b884"
!DBXmlImportDescSpec methodsFor: 'recovered'!
asXML
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('spec').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := name.
    (recoveredValue3) setAttr: ('name') value: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := type.
    (recoveredValue5) setAttr: ('type') value: (recoveredValue6).
    recoveredValue7 := methods.
    recoveredValue8 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 recoveredBlock33Value7 |
    recoveredBlock33Value0 := EtasXmlSupportDOMElement.
    recoveredBlock33Value1 := (recoveredBlock33Value0) new.
    recoveredBlock33Value2 := (recoveredBlock33Value1) initOn: ('method').
    recoveredBlock33Local1 := recoveredBlock33Value2.
    recoveredBlock33Value3 := recoveredBlock33Local1.
    recoveredBlock33Value4 := recoveredBlock33Arg1.
    (recoveredBlock33Value3) setAttr: ('name') value: (recoveredBlock33Value4).
    recoveredBlock33Value5 := recoveredLocal2.
    recoveredBlock33Value6 := recoveredBlock33Local1.
    recoveredBlock33Value7 := (recoveredBlock33Value5) addSubElement: (recoveredBlock33Value6).
    recoveredBlock33Value7
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2038fae8; bytecode file offset 0xc8c3dc"
!DBXmlImportDescSpec methodsFor: 'recovered'!
initOn: recoveredArg1 parent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super initOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNMToken: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            name := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNMToken: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            type := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (LookupTable new) elementCount: (12); keyArray: (#(nil nil nil nil nil nil 'project' nil nil nil nil nil 'stateMachine' nil nil nil 'network' nil nil 'blockDiagram' 'methodInterface' nil nil nil nil nil nil 'booleanTable' 'conditionalTable' 'atomicSoftwareComponent' nil nil nil nil 'elementInterface' nil nil 'protocol' nil nil 'esdl' 'cCode' nil nil)); valueArray: (#(nil nil nil nil nil nil SGProjectSpecification nil nil nil nil nil SGSmSpecification nil nil nil SGNetworkSpecification nil nil SGBdSpecification ASDMethodInterfaceSpecification nil nil nil nil nil nil SGBooleanTableSpecification SGConditionalTableSpecification ARBdSpecification nil nil nil nil ASDElementInterfaceSpecification nil nil SGProtocolSpecification nil nil SGASDLSpecification SGCCodeSpecification nil nil)); yourself.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            specClass := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'method'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block280f38dcArg1 | 
    | block280f38dcValue0 block280f38dcValue1 |
    block280f38dcValue0 := block280f38dcArg1.
    block280f38dcValue1 := (block280f38dcValue0) getNMToken: ('name').
    block280f38dcValue1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) multiple: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            methods := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := 'Die'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Call_95592'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := specClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := SGProjectSpecification.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            methods := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := DBXmlImportDescLogicModel.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            logicModelImportDesc := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

