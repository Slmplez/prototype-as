"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001592c; bytecode file offset 0x92209c"
!SGASDLSpecification methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralDiagramESDL'
! !

"ASDBase.ic method 0x20015d58; bytecode file offset 0x92209c"
!SGASDLSpecification methodsFor: 'recovered'!
dbXmlType
    ^'esdl'
! !

"ASDBase.ic method 0x20018da0; bytecode file offset 0x92209c"
!SGASDLSpecification methodsFor: 'recovered'!
visualCallBackImageActive
    ^'GeneralDiagramESDLActive'
! !

"ASDBase.ic method 0x2001f760; bytecode file offset 0x92209c"
!SGASDLSpecification methodsFor: 'recovered'!
sourceType
    ^'ASDL'
! !

"ASDBase.ic method 0x200381e4; bytecode file offset 0x934b68"
!SGASDLSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'ESDL'
! !

"ASDBase.ic method 0x2003eec8; bytecode file offset 0x93bf94"
!SGASDLSpecification methodsFor: 'recovered'!
xmlMakeInitialLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGESDLUnit.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007508c; bytecode file offset 0x9757c8"
!SGASDLSpecification methodsFor: 'recovered'!
isRealASDLSpecification
    ^true
! !

"ASDBase.ic method 0x200760f4; bytecode file offset 0x9757c8"
!SGASDLSpecification methodsFor: 'recovered'!
isToCopy
    ^true
! !

"ASDBase.ic method 0x20077604; bytecode file offset 0x9757c8"
!SGASDLSpecification methodsFor: 'recovered'!
isASDLSpecification
    ^true
! !

"ASDBase.ic method 0x2009c87c; bytecode file offset 0x999628"
!SGASDLSpecification methodsFor: 'recovered'!
initLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGESDLUnit.
    recoveredValue1 := (recoveredValue0) create.
    (self) logicModel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e418c; bytecode file offset 0x9e0a60"
!SGASDLSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGContTimeTextSpecEditorView.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := SGTextSpecificationEditorView.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c2bc; bytecode file offset 0xa68b84"
!SGASDLSpecification methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) internalWriteXMLHeader: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) openComplex: ('ESDLSpecification').
    recoveredValue2 := recoveredArg1.
    (self) internalWriteXMLESDLCode: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x204c6b1c; bytecode file offset 0xdc343c"
!SGASDLSpecification methodsFor: 'recovered'!
internalWriteXMLESDLCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ESDLCode'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'MethodBodies'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalCCs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block28106c54Arg1 | 
    | block28106c54Stack0 block28106c54Stack1 block28106c54Stack2 block28106c54Stack3 block28106c54PC block28106c54Step block28106c54Done block28106c54Result |
    block28106c54Stack0 := self.
    block28106c54PC := 4.
    block28106c54Done := false.
    [block28106c54Done not] whileTrue: [
        block28106c54Step := block28106c54PC.
        block28106c54Step = 4 ifTrue: [
            block28106c54Stack1 := false.
            block28106c54PC := 5.
        ].
        block28106c54Step = 5 ifTrue: [
            block28106c54Stack2 := block28106c54Arg1.
            block28106c54PC := 6.
        ].
        block28106c54Step = 6 ifTrue: [
            (block28106c54Stack2 == nil) ifTrue: [block28106c54PC := 18] ifFalse: [block28106c54PC := 10].
        ].
        block28106c54Step = 10 ifTrue: [
            block28106c54PC := 11.
        ].
        block28106c54Step = 11 ifTrue: [
            block28106c54Stack1 := block28106c54Arg1.
            block28106c54PC := 12.
        ].
        block28106c54Step = 12 ifTrue: [
            block28106c54Stack1 := (block28106c54Stack1) variantKey.
            block28106c54PC := 14.
        ].
        block28106c54Step = 14 ifTrue: [
            block28106c54Stack2 := SGASDLCodeVariantKey.
            block28106c54PC := 16.
        ].
        block28106c54Step = 16 ifTrue: [
            block28106c54Stack1 := (block28106c54Stack1) isKindOf: (block28106c54Stack2).
            block28106c54PC := 18.
        ].
        block28106c54Step = 18 ifTrue: [
            block28106c54Result := block28106c54Stack1.
            block28106c54Done := true.
        ].
    ].
    block28106c54Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'todoReiko'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlMethodsFor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Local1 recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            (recoveredBlock59Stack1 ~~ nil) ifTrue: [recoveredBlock59PC := 78] ifFalse: [recoveredBlock59PC := 72].
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Stack1 := ''.
            recoveredBlock59PC := 74.
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 86.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 82.
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) aliasName.
            recoveredBlock59PC := 84.
        ].
        recoveredBlock59Step = 84 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) procSourceAt: (recoveredBlock59Stack2).
            recoveredBlock59PC := 86.
        ].
        recoveredBlock59Step = 86 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack1.
            recoveredBlock59PC := 87.
        ].
        recoveredBlock59Step = 87 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 90.
        ].
        recoveredBlock59Step = 90 ifTrue: [
            recoveredBlock59Stack2 := 'MethodBody'.
            recoveredBlock59PC := 92.
        ].
        recoveredBlock59Step = 92 ifTrue: [
            (recoveredBlock59Stack1) openComplex: (recoveredBlock59Stack2).
            recoveredBlock59PC := 94.
        ].
        recoveredBlock59Step = 94 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 97.
        ].
        recoveredBlock59Step = 97 ifTrue: [
            recoveredBlock59Stack2 := 'methodName'.
            recoveredBlock59PC := 99.
        ].
        recoveredBlock59Step = 99 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 100.
        ].
        recoveredBlock59Step = 100 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) methodName.
            recoveredBlock59PC := 102.
        ].
        recoveredBlock59Step = 102 ifTrue: [
            (recoveredBlock59Stack1) attr: (recoveredBlock59Stack2) nmToken: (recoveredBlock59Stack3).
            recoveredBlock59PC := 104.
        ].
        recoveredBlock59Step = 104 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 107.
        ].
        recoveredBlock59Step = 107 ifTrue: [
            recoveredBlock59Stack2 := 'methodOID'.
            recoveredBlock59PC := 109.
        ].
        recoveredBlock59Step = 109 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 110.
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) aliasName.
            recoveredBlock59PC := 112.
        ].
        recoveredBlock59Step = 112 ifTrue: [
            (recoveredBlock59Stack1) attr: (recoveredBlock59Stack2) localId: (recoveredBlock59Stack3).
            recoveredBlock59PC := 114.
        ].
        recoveredBlock59Step = 114 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 117.
        ].
        recoveredBlock59Step = 117 ifTrue: [
            recoveredBlock59Stack2 := 'CodeBlock'.
            recoveredBlock59PC := 119.
        ].
        recoveredBlock59Step = 119 ifTrue: [
            (recoveredBlock59Stack1) openComplex: (recoveredBlock59Stack2).
            recoveredBlock59PC := 121.
        ].
        recoveredBlock59Step = 121 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 124.
        ].
        recoveredBlock59Step = 124 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 125.
        ].
        recoveredBlock59Step = 125 ifTrue: [
            (recoveredBlock59Stack1) pcData: (recoveredBlock59Stack2).
            recoveredBlock59PC := 127.
        ].
        recoveredBlock59Step = 127 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 130.
        ].
        recoveredBlock59Step = 130 ifTrue: [
            (recoveredBlock59Stack1) closeComplex.
            recoveredBlock59PC := 132.
        ].
        recoveredBlock59Step = 132 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 135.
        ].
        recoveredBlock59Step = 135 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) closeComplex.
            recoveredBlock59PC := 137.
        ].
        recoveredBlock59Step = 137 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

