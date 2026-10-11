"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200665b4; bytecode file offset 0x963428"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
instances
    | recoveredValue0 |
    recoveredValue0 := instances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066d94; bytecode file offset 0x9646f8"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
references
    | recoveredValue0 |
    recoveredValue0 := references.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006886c; bytecode file offset 0x965b90"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
analysisResult
    | recoveredValue0 |
    recoveredValue0 := analysisResult.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086508; bytecode file offset 0x982e18"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) analysisResult.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) includes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015189c; bytecode file offset 0xa4e160"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    references := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    instances := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20168434; bytecode file offset 0xa64d10"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
contains: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) instances.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) errLabel.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := (recoveredValue1) anySatisfy: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022f96c; bytecode file offset 0xb2c244"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
prepareForAnalysis
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    analysisResult := recoveredValue1.
    recoveredValue2 := (self) instances.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := (self) analysisResult.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := Array.
    recoveredBlock11Value3 := (recoveredBlock11Value2) with: (0) with: (nil).
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2024d034; bytecode file offset 0xb498f4"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
addAssignment: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := references.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := instances.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredArg2.
    recoveredBlock23Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025be98; bytecode file offset 0xb58770"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ownerDocument.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) xmlName.
    recoveredValue4 := (recoveredValue1) createElement: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) instances.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) xmlInstanceName.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredLocal1.
    (self) writeList: (recoveredValue5) name: (recoveredValue7) context: (recoveredValue8) owner: (recoveredValue9).
    recoveredValue10 := (self) references.
    recoveredValue11 := (self) class.
    recoveredValue12 := (recoveredValue11) xmlReferenceName.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := recoveredLocal1.
    (self) writeList: (recoveredValue10) name: (recoveredValue12) context: (recoveredValue13) owner: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2032bd68; bytecode file offset 0xc2862c"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) references.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) references.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := [
    | recoveredBlock6Block16Value0 |
    recoveredBlock6Block16Value0 := recoveredBlock6Arg2.
    recoveredBlock6Block16Value0
].
    recoveredBlock6Value3 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) ifAbsentPut: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) instances.
    recoveredValue5 := [:recoveredBlock33Arg1 :recoveredBlock33Arg2 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := (self) instances.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := [
    | recoveredBlock33Block44Value0 |
    recoveredBlock33Block44Value0 := recoveredBlock33Arg2.
    recoveredBlock33Block44Value0
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) at: (recoveredBlock33Value1) ifAbsentPut: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203cd248; bytecode file offset 0xcc9b30"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
writeList: recoveredArg1 name: recoveredArg2 context: recoveredArg3 owner: recoveredArg4
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
            recoveredStack1 := (recoveredStack1) associations.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280f72a8Arg1 :block280f72a8Arg2 | 
    | block280f72a8Value0 block280f72a8Value1 block280f72a8Value2 block280f72a8Value3 block280f72a8Value4 block280f72a8Value5 block280f72a8Value6 |
    block280f72a8Value0 := block280f72a8Arg1.
    block280f72a8Value1 := (block280f72a8Value0) key.
    block280f72a8Value2 := (block280f72a8Value1) errLabel.
    block280f72a8Value3 := block280f72a8Arg2.
    block280f72a8Value4 := (block280f72a8Value3) key.
    block280f72a8Value5 := (block280f72a8Value4) errLabel.
    block280f72a8Value6 := (block280f72a8Value2) < (block280f72a8Value5).
    block280f72a8Value6
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 recoveredBlock24Value16 recoveredBlock24Value17 |
    recoveredBlock24Value0 := recoveredArg4.
    recoveredBlock24Value1 := (recoveredBlock24Value0) ownerDocument.
    recoveredBlock24Value2 := recoveredArg2.
    recoveredBlock24Value3 := (recoveredBlock24Value1) createElement: (recoveredBlock24Value2).
    recoveredLocal1 := recoveredBlock24Value3.
    recoveredBlock24Value4 := recoveredArg3.
    recoveredBlock24Value5 := recoveredBlock24Arg1.
    recoveredBlock24Value6 := (recoveredBlock24Value5) value.
    recoveredBlock24Value7 := recoveredLocal1.
    (recoveredBlock24Value4) addSource: (recoveredBlock24Value6) to: (recoveredBlock24Value7).
    recoveredBlock24Value8 := recoveredLocal1.
    recoveredBlock24Value9 := SGMdReferenceAnalysisCollection.
    recoveredBlock24Value10 := recoveredBlock24Arg1.
    recoveredBlock24Value11 := (recoveredBlock24Value10) key.
    recoveredBlock24Value12 := recoveredArg3.
    recoveredBlock24Value13 := recoveredLocal1.
    recoveredBlock24Value14 := (recoveredBlock24Value9) varDeclElement: (recoveredBlock24Value11) context: (recoveredBlock24Value12) owner: (recoveredBlock24Value13).
    (recoveredBlock24Value8) appendChild: (recoveredBlock24Value14).
    recoveredBlock24Value15 := recoveredArg4.
    recoveredBlock24Value16 := recoveredLocal1.
    recoveredBlock24Value17 := (recoveredBlock24Value15) appendChild: (recoveredBlock24Value16).
    recoveredBlock24Value17
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f4ed0; bytecode file offset 0xcf17b0"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
propagateLevel: recoveredArg1 lookup: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := false.
    recoveredValue0 := (self) references.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredArg2.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) value: (recoveredBlock10Value1).
    recoveredBlock10Value3 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Value0 recoveredBlock10Block23Value1 recoveredBlock10Block23Value2 recoveredBlock10Block23Value3 |
    recoveredBlock10Block23Value0 := recoveredBlock10Block23Arg1.
    recoveredBlock10Block23Value1 := (recoveredBlock10Block23Value0) analysisResult.
    recoveredBlock10Block23Value2 := [:recoveredBlock10Block23Block32Arg1 :recoveredBlock10Block23Block32Arg2 | 
    | recoveredBlock10Block23Block32Stack0 recoveredBlock10Block23Block32Stack1 recoveredBlock10Block23Block32Stack2 recoveredBlock10Block23Block32Stack3 recoveredBlock10Block23Block32Stack4 recoveredBlock10Block23Block32PC recoveredBlock10Block23Block32Step recoveredBlock10Block23Block32Done recoveredBlock10Block23Block32Result |
    recoveredBlock10Block23Block32Stack0 := self.
    recoveredBlock10Block23Block32PC := 38.
    recoveredBlock10Block23Block32Done := false.
    [recoveredBlock10Block23Block32Done not] whileTrue: [
        recoveredBlock10Block23Block32Step := recoveredBlock10Block23Block32PC.
        recoveredBlock10Block23Block32Step = 38 ifTrue: [
            recoveredBlock10Block23Block32Stack1 := nil.
            recoveredBlock10Block23Block32PC := 39.
        ].
        recoveredBlock10Block23Block32Step = 39 ifTrue: [
            recoveredBlock10Block23Block32Stack2 := recoveredBlock10Block23Block32Arg2.
            recoveredBlock10Block23Block32PC := 40.
        ].
        recoveredBlock10Block23Block32Step = 40 ifTrue: [
            recoveredBlock10Block23Block32Stack2 := (recoveredBlock10Block23Block32Stack2) first.
            recoveredBlock10Block23Block32PC := 42.
        ].
        recoveredBlock10Block23Block32Step = 42 ifTrue: [
            recoveredBlock10Block23Block32Stack3 := recoveredArg1.
            recoveredBlock10Block23Block32PC := 45.
        ].
        recoveredBlock10Block23Block32Step = 45 ifTrue: [
            recoveredBlock10Block23Block32Stack2 := (recoveredBlock10Block23Block32Stack2) = (recoveredBlock10Block23Block32Stack3).
            recoveredBlock10Block23Block32PC := 46.
        ].
        recoveredBlock10Block23Block32Step = 46 ifTrue: [
            (recoveredBlock10Block23Block32Stack2) ifTrue: [recoveredBlock10Block23Block32PC := 50] ifFalse: [recoveredBlock10Block23Block32PC := 79].
        ].
        recoveredBlock10Block23Block32Step = 50 ifTrue: [
            recoveredBlock10Block23Block32PC := 51.
        ].
        recoveredBlock10Block23Block32Step = 51 ifTrue: [
            recoveredBlock10Block23Block32Stack1 := self.
            recoveredBlock10Block23Block32PC := 52.
        ].
        recoveredBlock10Block23Block32Step = 52 ifTrue: [
            recoveredBlock10Block23Block32Stack1 := (recoveredBlock10Block23Block32Stack1) analysisResult.
            recoveredBlock10Block23Block32PC := 53.
        ].
        recoveredBlock10Block23Block32Step = 53 ifTrue: [
            recoveredBlock10Block23Block32Stack2 := recoveredBlock10Block23Block32Arg1.
            recoveredBlock10Block23Block32PC := 54.
        ].
        recoveredBlock10Block23Block32Step = 54 ifTrue: [
            recoveredBlock10Block23Block32Stack3 := [
    | recoveredBlock10Block23Block32Block54Value0 recoveredBlock10Block23Block32Block54Value1 recoveredBlock10Block23Block32Block54Value2 recoveredBlock10Block23Block32Block54Value3 recoveredBlock10Block23Block32Block54Value4 |
    recoveredBlock10Block23Block32Block54Value0 := Array.
    recoveredBlock10Block23Block32Block54Value1 := recoveredArg1.
    recoveredBlock10Block23Block32Block54Value2 := (recoveredBlock10Block23Block32Block54Value1) + (1).
    recoveredBlock10Block23Block32Block54Value3 := recoveredBlock10Arg1.
    recoveredBlock10Block23Block32Block54Value4 := (recoveredBlock10Block23Block32Block54Value0) with: (recoveredBlock10Block23Block32Block54Value2) with: (recoveredBlock10Block23Block32Block54Value3).
    recoveredBlock10Block23Block32Block54Value4
].
            recoveredBlock10Block23Block32PC := 72.
        ].
        recoveredBlock10Block23Block32Step = 72 ifTrue: [
            (recoveredBlock10Block23Block32Stack1) at: (recoveredBlock10Block23Block32Stack2) ifAbsentPut: (recoveredBlock10Block23Block32Stack3).
            recoveredBlock10Block23Block32PC := 74.
        ].
        recoveredBlock10Block23Block32Step = 74 ifTrue: [
            recoveredBlock10Block23Block32Stack1 := true.
            recoveredBlock10Block23Block32PC := 75.
        ].
        recoveredBlock10Block23Block32Step = 75 ifTrue: [
            recoveredBlock10Block23Block32Stack2 := recoveredBlock10Block23Block32Stack1.
            recoveredBlock10Block23Block32PC := 76.
        ].
        recoveredBlock10Block23Block32Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock10Block23Block32Stack2.
            recoveredBlock10Block23Block32PC := 79.
        ].
        recoveredBlock10Block23Block32Step = 79 ifTrue: [
            recoveredBlock10Block23Block32Result := recoveredBlock10Block23Block32Stack1.
            recoveredBlock10Block23Block32Done := true.
        ].
    ].
    recoveredBlock10Block23Block32Result
].
    recoveredBlock10Block23Value3 := (recoveredBlock10Block23Value1) keysAndValuesDo: (recoveredBlock10Block23Value2).
    recoveredBlock10Block23Value3
].
    recoveredBlock10Value4 := (recoveredBlock10Value2) ifNotNil: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2040bc64; bytecode file offset 0xd08544"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
checkErrorsVarDecl: recoveredArg1 lookup: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) analysisResult.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 :recoveredBlock22Arg2 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22Stack7 recoveredBlock22Stack8 recoveredBlock22Stack9 recoveredBlock22Stack10 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isMdlBlockVarDecl.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 34] ifFalse: [recoveredBlock22PC := 52].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isMdlMethodDecl.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 42] ifFalse: [recoveredBlock22PC := 58].
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) scope.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) = (recoveredBlock22Stack3).
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 58] ifFalse: [recoveredBlock22PC := 52].
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isMdlMessage.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 58] ifFalse: [recoveredBlock22PC := 93].
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 62.
        ].
        recoveredBlock22Step = 62 ifTrue: [
            recoveredBlock22Stack2 := 3027.
            recoveredBlock22PC := 66.
        ].
        recoveredBlock22Step = 66 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) errLabel.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Arg1.
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) errLabel.
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack5 := self.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack6 := recoveredArg1.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredBlock22Stack6 := (recoveredBlock22Stack6) source.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack7 := recoveredBlock22Arg1.
            recoveredBlock22PC := 81.
        ].
        recoveredBlock22Step = 81 ifTrue: [
            recoveredBlock22Stack8 := recoveredArg1.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack9 := recoveredArg2.
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            recoveredBlock22Stack5 := (recoveredBlock22Stack5) buildAssignmentSource: (recoveredBlock22Stack6) instance: (recoveredBlock22Stack7) reference: (recoveredBlock22Stack8) lookup: (recoveredBlock22Stack9).
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) mdlWarningNo: (recoveredBlock22Stack2) with: (recoveredBlock22Stack3) with: (recoveredBlock22Stack4) source: (recoveredBlock22Stack5).
            recoveredBlock22PC := 93.
        ].
        recoveredBlock22Step = 93 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cf398; bytecode file offset 0xdcbc88"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) contents.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block18Arg1 | 
    | recoveredBlock8Block18Stack0 recoveredBlock8Block18Stack1 recoveredBlock8Block18Stack2 recoveredBlock8Block18Stack3 recoveredBlock8Block18Stack4 recoveredBlock8Block18PC recoveredBlock8Block18Step recoveredBlock8Block18Done recoveredBlock8Block18Result |
    recoveredBlock8Block18Stack0 := self.
    recoveredBlock8Block18PC := 24.
    recoveredBlock8Block18Done := false.
    [recoveredBlock8Block18Done not] whileTrue: [
        recoveredBlock8Block18Step := recoveredBlock8Block18PC.
        recoveredBlock8Block18Step = 24 ifTrue: [
            recoveredBlock8Block18Stack1 := recoveredBlock8Local2.
            recoveredBlock8Block18PC := 27.
        ].
        recoveredBlock8Block18Step = 27 ifTrue: [
            (recoveredBlock8Block18Stack1 == nil) ifTrue: [recoveredBlock8Block18PC := 35] ifFalse: [recoveredBlock8Block18PC := 30].
        ].
        recoveredBlock8Block18Step = 30 ifTrue: [
            recoveredBlock8Block18Stack1 := recoveredArg3.
            recoveredBlock8Block18PC := 33.
        ].
        recoveredBlock8Block18Step = 33 ifTrue: [
            recoveredBlock8Block18Stack1 := (recoveredBlock8Block18Stack1) failedToLoadAnalysisInfo.
            recoveredBlock8Block18PC := 34.
        ].
        recoveredBlock8Block18Step = 34 ifTrue: [
            ^recoveredBlock8Block18Stack1
        ].
        recoveredBlock8Block18Step = 35 ifTrue: [
            recoveredBlock8Block18Stack1 := SGMdReferenceAnalysisCollection.
            recoveredBlock8Block18PC := 37.
        ].
        recoveredBlock8Block18Step = 37 ifTrue: [
            recoveredBlock8Block18Stack2 := recoveredBlock8Block18Arg1.
            recoveredBlock8Block18PC := 38.
        ].
        recoveredBlock8Block18Step = 38 ifTrue: [
            recoveredBlock8Block18Stack3 := recoveredArg3.
            recoveredBlock8Block18PC := 41.
        ].
        recoveredBlock8Block18Step = 41 ifTrue: [
            recoveredBlock8Block18Stack1 := (recoveredBlock8Block18Stack1) getExtendVarDeclFrom: (recoveredBlock8Block18Stack2) context: (recoveredBlock8Block18Stack3).
            recoveredBlock8Block18PC := 43.
        ].
        recoveredBlock8Block18Step = 43 ifTrue: [
            recoveredBlock8Block18Stack2 := recoveredBlock8Block18Stack1.
            recoveredBlock8Block18PC := 44.
        ].
        recoveredBlock8Block18Step = 44 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Block18Stack2.
            recoveredBlock8Block18PC := 47.
        ].
        recoveredBlock8Block18Step = 47 ifTrue: [
            recoveredBlock8Block18Result := recoveredBlock8Block18Stack1.
            recoveredBlock8Block18Done := true.
        ].
    ].
    recoveredBlock8Block18Result
].
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            (recoveredBlock8Stack1 ~~ nil) ifTrue: [recoveredBlock8PC := 61] ifFalse: [recoveredBlock8PC := 56].
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) failedToLoadAnalysisInfo.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack2 := 'sourceId'.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) getAttribute: (recoveredBlock8Stack2).
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 71 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            (recoveredBlock8Stack1 == nil) ifTrue: [recoveredBlock8PC := 89] ifFalse: [recoveredBlock8PC := 78].
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 84.
        ].
        recoveredBlock8Step = 84 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) sourceForId: (recoveredBlock8Stack2).
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) name.
            recoveredBlock8PC := 94.
        ].
        recoveredBlock8Step = 94 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) class.
            recoveredBlock8PC := 97.
        ].
        recoveredBlock8Step = 97 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) xmlInstanceName.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 100.
        ].
        recoveredBlock8Step = 100 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 104] ifFalse: [recoveredBlock8PC := 118].
        ].
        recoveredBlock8Step = 104 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 105.
        ].
        recoveredBlock8Step = 105 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) instances.
            recoveredBlock8PC := 107.
        ].
        recoveredBlock8Step = 107 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 110.
        ].
        recoveredBlock8Step = 110 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local1.
            recoveredBlock8PC := 113.
        ].
        recoveredBlock8Step = 113 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) put: (recoveredBlock8Stack3).
            recoveredBlock8PC := 115.
        ].
        recoveredBlock8Step = 115 ifTrue: [
            recoveredBlock8PC := 151.
        ].
        recoveredBlock8Step = 118 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 121.
        ].
        recoveredBlock8Step = 121 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) name.
            recoveredBlock8PC := 123.
        ].
        recoveredBlock8Step = 123 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 124.
        ].
        recoveredBlock8Step = 124 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) class.
            recoveredBlock8PC := 126.
        ].
        recoveredBlock8Step = 126 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) xmlReferenceName.
            recoveredBlock8PC := 128.
        ].
        recoveredBlock8Step = 128 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 129.
        ].
        recoveredBlock8Step = 129 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 132] ifFalse: [recoveredBlock8PC := 146].
        ].
        recoveredBlock8Step = 132 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 133.
        ].
        recoveredBlock8Step = 133 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) references.
            recoveredBlock8PC := 135.
        ].
        recoveredBlock8Step = 135 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 138.
        ].
        recoveredBlock8Step = 138 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local1.
            recoveredBlock8PC := 141.
        ].
        recoveredBlock8Step = 141 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) put: (recoveredBlock8Stack3).
            recoveredBlock8PC := 143.
        ].
        recoveredBlock8Step = 143 ifTrue: [
            recoveredBlock8PC := 151.
        ].
        recoveredBlock8Step = 146 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 149.
        ].
        recoveredBlock8Step = 149 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) failedToLoadAnalysisInfo.
            recoveredBlock8PC := 150.
        ].
        recoveredBlock8Step = 150 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 151 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2051fcc4; bytecode file offset 0xe1c5bc"
!SGMdReferenceAnalysisInfo methodsFor: 'recovered'!
buildAssignmentSource: recoveredArg1 instance: recoveredArg2 reference: recoveredArg3 lookup: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue5) value: (recoveredValue6).
    recoveredLocal5 := recoveredValue7.
    recoveredValue8 := [
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal5.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) analysisResult.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg2.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) last.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 116] ifFalse: [recoveredBlock32PC := 58].
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredBlock32Stack2 := 'assignment from <'.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal2.
            recoveredBlock32PC := 66.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) errLabelWithScope.
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack3 := '> to <'.
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 74.
        ].
        recoveredBlock32Step = 74 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal1.
            recoveredBlock32PC := 77.
        ].
        recoveredBlock32Step = 77 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) errLabelWithScope.
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32Stack3 := '>'.
            recoveredBlock32PC := 83.
        ].
        recoveredBlock32Step = 83 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 85.
        ].
        recoveredBlock32Step = 85 ifTrue: [
            (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal4.
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal5.
            recoveredBlock32PC := 93.
        ].
        recoveredBlock32Step = 93 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) references.
            recoveredBlock32PC := 95.
        ].
        recoveredBlock32Step = 95 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal2.
            recoveredBlock32PC := 98.
        ].
        recoveredBlock32Step = 98 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) at: (recoveredBlock32Stack3).
            recoveredBlock32PC := 100.
        ].
        recoveredBlock32Step = 100 ifTrue: [
            (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 102.
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg4.
            recoveredBlock32PC := 105.
        ].
        recoveredBlock32Step = 105 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal2.
            recoveredBlock32PC := 108.
        ].
        recoveredBlock32Step = 108 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) value: (recoveredBlock32Stack2).
            recoveredBlock32PC := 109.
        ].
        recoveredBlock32Step = 109 ifTrue: [
            recoveredLocal5 := recoveredBlock32Stack1.
            recoveredBlock32PC := 112.
        ].
        recoveredBlock32Step = 112 ifTrue: [
            recoveredBlock32PC := 164.
        ].
        recoveredBlock32Step = 116 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 119.
        ].
        recoveredBlock32Step = 119 ifTrue: [
            recoveredBlock32Stack2 := 'assignment from <'.
            recoveredBlock32PC := 121.
        ].
        recoveredBlock32Step = 121 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 124.
        ].
        recoveredBlock32Step = 124 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) errLabelWithScope.
            recoveredBlock32PC := 126.
        ].
        recoveredBlock32Step = 126 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 128.
        ].
        recoveredBlock32Step = 128 ifTrue: [
            recoveredBlock32Stack3 := '> to <'.
            recoveredBlock32PC := 130.
        ].
        recoveredBlock32Step = 130 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 132.
        ].
        recoveredBlock32Step = 132 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal1.
            recoveredBlock32PC := 135.
        ].
        recoveredBlock32Step = 135 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) errLabelWithScope.
            recoveredBlock32PC := 137.
        ].
        recoveredBlock32Step = 137 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 139.
        ].
        recoveredBlock32Step = 139 ifTrue: [
            recoveredBlock32Stack3 := '>'.
            recoveredBlock32PC := 141.
        ].
        recoveredBlock32Step = 141 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) , (recoveredBlock32Stack3).
            recoveredBlock32PC := 143.
        ].
        recoveredBlock32Step = 143 ifTrue: [
            (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 145 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal4.
            recoveredBlock32PC := 148.
        ].
        recoveredBlock32Step = 148 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal5.
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) instances.
            recoveredBlock32PC := 153.
        ].
        recoveredBlock32Step = 153 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 156.
        ].
        recoveredBlock32Step = 156 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) at: (recoveredBlock32Stack3).
            recoveredBlock32PC := 158.
        ].
        recoveredBlock32Step = 158 ifTrue: [
            (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 160.
        ].
        recoveredBlock32Step = 160 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 161.
        ].
        recoveredBlock32Step = 161 ifTrue: [
            recoveredLocal5 := recoveredBlock32Stack1.
            recoveredBlock32PC := 164.
        ].
        recoveredBlock32Step = 164 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 167.
        ].
        recoveredBlock32Step = 167 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 170.
        ].
        recoveredBlock32Step = 170 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal5.
            recoveredBlock32PC := 173.
        ].
        recoveredBlock32Step = 173 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) notNil.
            recoveredBlock32PC := 174.
        ].
        recoveredBlock32Step = 174 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (recoveredValue8) whileTrue.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) reverse.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue12) reverse.
    recoveredValue14 := (recoveredValue9) createMultiSource: (recoveredValue11) labels: (recoveredValue13).
    ^recoveredValue14
! !

