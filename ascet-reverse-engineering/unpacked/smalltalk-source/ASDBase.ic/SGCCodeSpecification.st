"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a06c; bytecode file offset 0x92209c"
!SGCCodeSpecification methodsFor: 'recovered'!
visualCallBackImageActive
    ^'GeneralDiagramCCodeActive'
! !

"ASDBase.ic method 0x2002153c; bytecode file offset 0x92209c"
!SGCCodeSpecification methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralDiagramCCode'
! !

"ASDBase.ic method 0x2002282c; bytecode file offset 0x92209c"
!SGCCodeSpecification methodsFor: 'recovered'!
dbXmlType
    ^'cCode'
! !

"ASDBase.ic method 0x20025f54; bytecode file offset 0x923928"
!SGCCodeSpecification methodsFor: 'recovered'!
sourceType
    ^'CCode'
! !

"ASDBase.ic method 0x2003825c; bytecode file offset 0x934b68"
!SGCCodeSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'CCode'
! !

"ASDBase.ic method 0x2003e528; bytecode file offset 0x93bf94"
!SGCCodeSpecification methodsFor: 'recovered'!
xmlMakeInitialLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCCodeBlock.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200760ec; bytecode file offset 0x9757c8"
!SGCCodeSpecification methodsFor: 'recovered'!
isToCopy
    ^true
! !

"ASDBase.ic method 0x2007628c; bytecode file offset 0x9757c8"
!SGCCodeSpecification methodsFor: 'recovered'!
isCCodeSpecification
    ^true
! !

"ASDBase.ic method 0x2009cd68; bytecode file offset 0x999628"
!SGCCodeSpecification methodsFor: 'recovered'!
initLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCCodeBlock.
    recoveredValue1 := (recoveredValue0) create.
    (self) logicModel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e4178; bytecode file offset 0x9e0a60"
!SGCCodeSpecification methodsFor: 'recovered'!
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
            recoveredStack0 := SGContTimeCCodeEditorView.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := SGCCodeEditorView.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028dc3c; bytecode file offset 0xb8a510"
!SGCCodeSpecification methodsFor: 'recovered'!
additionalSpecClasses: recoveredArg1
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
            recoveredStack2 := 'Call_87979'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super additionalSpecClasses: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := ASDGenericComponent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := SGASDLSpecification.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := super additionalSpecClasses: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20548a30; bytecode file offset 0xe45360"
!SGCCodeSpecification methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlMethodsFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) internalWriteXMLHeader: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'CCodeSpecification'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'ctOutputs'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDirect.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'direct'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'nondirect'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) enum: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'CCode'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'WBCollection'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := 'Kli'.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack2 := 'Call_86953'.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) == (recoveredBlock69Stack2).
            recoveredBlock69PC := 81.
        ].
        recoveredBlock69Step = 81 ifTrue: [
            recoveredBlock69PC := 82.
        ].
        recoveredBlock69Step = 82 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) externalCCs.
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack2 := [:block2810ecdcArg1 | 
    | block2810ecdcValue0 block2810ecdcValue1 |
    block2810ecdcValue0 := block2810ecdcArg1.
    block2810ecdcValue1 := (block2810ecdcValue0) notNil.
    block2810ecdcValue1
].
            recoveredBlock69PC := 87.
        ].
        recoveredBlock69Step = 87 ifTrue: [
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) select: (recoveredBlock69Stack2).
            recoveredBlock69PC := 95.
        ].
        recoveredBlock69Step = 95 ifTrue: [
            recoveredBlock69Stack2 := [:block2810ed00Arg1 :block2810ed00Arg2 | 
    | block2810ed00Value0 block2810ed00Value1 block2810ed00Value2 block2810ed00Value3 block2810ed00Value4 block2810ed00Value5 block2810ed00Value6 |
    block2810ed00Value0 := block2810ed00Arg1.
    block2810ed00Value1 := (block2810ed00Value0) variantKey.
    block2810ed00Value2 := (block2810ed00Value1) variantKeyString.
    block2810ed00Value3 := block2810ed00Arg2.
    block2810ed00Value4 := (block2810ed00Value3) variantKey.
    block2810ed00Value5 := (block2810ed00Value4) variantKeyString.
    block2810ed00Value6 := (block2810ed00Value2) < (block2810ed00Value5).
    block2810ed00Value6
].
            recoveredBlock69PC := 97.
        ].
        recoveredBlock69Step = 97 ifTrue: [
            recoveredBlock69PC := 112.
        ].
        recoveredBlock69Step = 112 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) asSortedCollection: (recoveredBlock69Stack2).
            recoveredBlock69PC := 114.
        ].
        recoveredBlock69Step = 114 ifTrue: [
            recoveredBlock69Stack2 := [:recoveredBlock69Block114Arg1 | 
    | recoveredBlock69Block114Value0 recoveredBlock69Block114Value1 recoveredBlock69Block114Value2 recoveredBlock69Block114Value3 |
    recoveredBlock69Block114Value0 := recoveredBlock69Block114Arg1.
    recoveredBlock69Block114Value1 := recoveredArg1.
    recoveredBlock69Block114Value2 := recoveredLocal1.
    recoveredBlock69Block114Value3 := (recoveredBlock69Block114Value0) writeXML: (recoveredBlock69Block114Value1) methods: (recoveredBlock69Block114Value2) impl: (nil).
    recoveredBlock69Block114Value3
].
            recoveredBlock69PC := 132.
        ].
        recoveredBlock69Step = 132 ifTrue: [
            (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 134.
        ].
        recoveredBlock69Step = 134 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) sgClass.
            recoveredBlock69PC := 135.
        ].
        recoveredBlock69Step = 135 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) xmlHandwrittenImplCode.
            recoveredBlock69PC := 137.
        ].
        recoveredBlock69Step = 137 ifTrue: [
            recoveredBlock69Stack1 := [:recoveredBlock69Block137Arg1 :recoveredBlock69Block137Arg2 | 
    | recoveredBlock69Block137Stack0 recoveredBlock69Block137Stack1 recoveredBlock69Block137Stack2 recoveredBlock69Block137Stack3 recoveredBlock69Block137PC recoveredBlock69Block137Step recoveredBlock69Block137Done recoveredBlock69Block137Result |
    recoveredBlock69Block137Stack0 := nil.
    recoveredBlock69Block137PC := 144.
    recoveredBlock69Block137Done := false.
    [recoveredBlock69Block137Done not] whileTrue: [
        recoveredBlock69Block137Step := recoveredBlock69Block137PC.
        recoveredBlock69Block137Step = 144 ifTrue: [
            recoveredBlock69Block137Stack1 := recoveredBlock69Block137Arg2.
            recoveredBlock69Block137PC := 147.
        ].
        recoveredBlock69Block137Step = 147 ifTrue: [
            recoveredBlock69Block137Stack1 := (recoveredBlock69Block137Stack1) externalCCs.
            recoveredBlock69Block137PC := 149.
        ].
        recoveredBlock69Block137Step = 149 ifTrue: [
            recoveredBlock69Block137Stack2 := [:block2810ed24Arg1 | 
    | block2810ed24Value0 block2810ed24Value1 |
    block2810ed24Value0 := block2810ed24Arg1.
    block2810ed24Value1 := (block2810ed24Value0) notNil.
    block2810ed24Value1
].
            recoveredBlock69Block137PC := 151.
        ].
        recoveredBlock69Block137Step = 151 ifTrue: [
            recoveredBlock69Block137PC := 157.
        ].
        recoveredBlock69Block137Step = 157 ifTrue: [
            recoveredBlock69Block137Stack1 := (recoveredBlock69Block137Stack1) select: (recoveredBlock69Block137Stack2).
            recoveredBlock69Block137PC := 159.
        ].
        recoveredBlock69Block137Step = 159 ifTrue: [
            recoveredBlock69Block137Stack2 := [:block2810ed48Arg1 :block2810ed48Arg2 | 
    | block2810ed48Value0 block2810ed48Value1 block2810ed48Value2 block2810ed48Value3 block2810ed48Value4 block2810ed48Value5 block2810ed48Value6 |
    block2810ed48Value0 := block2810ed48Arg1.
    block2810ed48Value1 := (block2810ed48Value0) variantKey.
    block2810ed48Value2 := (block2810ed48Value1) variantKeyString.
    block2810ed48Value3 := block2810ed48Arg2.
    block2810ed48Value4 := (block2810ed48Value3) variantKey.
    block2810ed48Value5 := (block2810ed48Value4) variantKeyString.
    block2810ed48Value6 := (block2810ed48Value2) < (block2810ed48Value5).
    block2810ed48Value6
].
            recoveredBlock69Block137PC := 161.
        ].
        recoveredBlock69Block137Step = 161 ifTrue: [
            recoveredBlock69Block137PC := 176.
        ].
        recoveredBlock69Block137Step = 176 ifTrue: [
            recoveredBlock69Block137Stack1 := (recoveredBlock69Block137Stack1) asSortedCollection: (recoveredBlock69Block137Stack2).
            recoveredBlock69Block137PC := 178.
        ].
        recoveredBlock69Block137Step = 178 ifTrue: [
            recoveredBlock69Block137Stack2 := [:recoveredBlock69Block137Block178Arg1 | 
    | recoveredBlock69Block137Block178Value0 recoveredBlock69Block137Block178Value1 recoveredBlock69Block137Block178Value2 recoveredBlock69Block137Block178Value3 recoveredBlock69Block137Block178Value4 |
    recoveredBlock69Block137Block178Value0 := recoveredBlock69Block137Block178Arg1.
    recoveredBlock69Block137Block178Value1 := recoveredArg1.
    recoveredBlock69Block137Block178Value2 := recoveredLocal1.
    recoveredBlock69Block137Block178Value3 := recoveredBlock69Block137Arg1.
    recoveredBlock69Block137Block178Value4 := (recoveredBlock69Block137Block178Value0) writeXML: (recoveredBlock69Block137Block178Value1) methods: (recoveredBlock69Block137Block178Value2) impl: (recoveredBlock69Block137Block178Value3).
    recoveredBlock69Block137Block178Value4
].
            recoveredBlock69Block137PC := 198.
        ].
        recoveredBlock69Block137Step = 198 ifTrue: [
            recoveredBlock69Block137Stack1 := (recoveredBlock69Block137Stack1) do: (recoveredBlock69Block137Stack2).
            recoveredBlock69Block137PC := 200.
        ].
        recoveredBlock69Block137Step = 200 ifTrue: [
            recoveredBlock69Block137Result := recoveredBlock69Block137Stack1.
            recoveredBlock69Block137Done := true.
        ].
    ].
    recoveredBlock69Block137Result
].
            recoveredBlock69PC := 201.
        ].
        recoveredBlock69Step = 201 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) keysAndValuesDo: (recoveredBlock69Stack1).
            recoveredBlock69PC := 203.
        ].
        recoveredBlock69Step = 203 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack0.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

