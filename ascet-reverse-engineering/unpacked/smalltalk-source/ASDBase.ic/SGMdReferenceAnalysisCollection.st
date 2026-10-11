"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065e94; bytecode file offset 0x963428"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
varDeclMap
    | recoveredValue0 |
    recoveredValue0 := varDeclMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a458; bytecode file offset 0x997194"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) varDeclMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f9d9c; bytecode file offset 0x9f6678"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    varDeclMap := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201f6c94; bytecode file offset 0xaf3554"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
get: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) varDeclMap.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) errLabel.
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
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
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
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201ff26c; bytecode file offset 0xafbb30"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
analyzeAndThrowErrors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) varDeclMap.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg2.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 |
    recoveredBlock5Block14Value0 := (self) varDeclMap.
    recoveredBlock5Block14Value1 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value2 := (recoveredBlock5Block14Value0) at: (recoveredBlock5Block14Value1).
    recoveredBlock5Block14Value2
].
    recoveredBlock5Value3 := (recoveredBlock5Value0) checkErrorsVarDecl: (recoveredBlock5Value1) lookup: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202638b4; bytecode file offset 0xb60188"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
addAssignmentOf: recoveredArg1 to: recoveredArg2 source: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDeclMap.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [
    | block280dfe24Value0 block280dfe24Value1 |
    block280dfe24Value0 := SGMdReferenceAnalysisInfo.
    block280dfe24Value1 := (block280dfe24Value0) create.
    block280dfe24Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addAssignment: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e265c; bytecode file offset 0xbdef20"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDeclMap.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := (self) varDeclMap.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := [
    | recoveredBlock12Block22Value0 |
    recoveredBlock12Block22Value0 := recoveredBlock12Arg2.
    recoveredBlock12Block22Value0
].
    recoveredBlock12Value3 := [:recoveredBlock12Block32Arg1 | 
    | recoveredBlock12Block32Value0 recoveredBlock12Block32Value1 recoveredBlock12Block32Value2 |
    recoveredBlock12Block32Value0 := recoveredBlock12Block32Arg1.
    recoveredBlock12Block32Value1 := recoveredBlock12Arg2.
    recoveredBlock12Block32Value2 := (recoveredBlock12Block32Value0) merge: (recoveredBlock12Block32Value1).
    recoveredBlock12Block32Value2
].
    recoveredBlock12Value4 := (recoveredBlock12Value0) at: (recoveredBlock12Value1) ifAbsentPut: (recoveredBlock12Value2) ifPresent: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d840c; bytecode file offset 0xcd4ce0"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
calculateTransitiveHull
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDeclMap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f7ca4Arg1 | 
    | block280f7ca4Value0 block280f7ca4Value1 |
    block280f7ca4Value0 := block280f7ca4Arg1.
    block280f7ca4Value1 := (block280f7ca4Value0) prepareForAnalysis.
    block280f7ca4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredLocal1 := true.
    recoveredBlock20Value0 := (self) varDeclMap.
    recoveredBlock20Value1 := [:recoveredBlock20Block31Arg1 | 
    | recoveredBlock20Block31Stack0 recoveredBlock20Block31Stack1 recoveredBlock20Block31Stack2 recoveredBlock20Block31Stack3 recoveredBlock20Block31Stack4 recoveredBlock20Block31Stack5 recoveredBlock20Block31PC recoveredBlock20Block31Step recoveredBlock20Block31Done recoveredBlock20Block31Result |
    recoveredBlock20Block31Stack0 := self.
    recoveredBlock20Block31PC := 38.
    recoveredBlock20Block31Done := false.
    [recoveredBlock20Block31Done not] whileTrue: [
        recoveredBlock20Block31Step := recoveredBlock20Block31PC.
        recoveredBlock20Block31Step = 38 ifTrue: [
            recoveredBlock20Block31Stack1 := nil.
            recoveredBlock20Block31PC := 39.
        ].
        recoveredBlock20Block31Step = 39 ifTrue: [
            recoveredBlock20Block31Stack2 := recoveredBlock20Block31Arg1.
            recoveredBlock20Block31PC := 40.
        ].
        recoveredBlock20Block31Step = 40 ifTrue: [
            recoveredBlock20Block31Stack3 := recoveredLocal2.
            recoveredBlock20Block31PC := 43.
        ].
        recoveredBlock20Block31Step = 43 ifTrue: [
            recoveredBlock20Block31Stack4 := [:recoveredBlock20Block31Block43Arg1 | 
    | recoveredBlock20Block31Block43Value0 recoveredBlock20Block31Block43Value1 recoveredBlock20Block31Block43Value2 recoveredBlock20Block31Block43Value3 |
    recoveredBlock20Block31Block43Value0 := (self) varDeclMap.
    recoveredBlock20Block31Block43Value1 := recoveredBlock20Block31Block43Arg1.
    recoveredBlock20Block31Block43Value2 := [].
    recoveredBlock20Block31Block43Value3 := (recoveredBlock20Block31Block43Value0) at: (recoveredBlock20Block31Block43Value1) ifAbsent: (recoveredBlock20Block31Block43Value2).
    recoveredBlock20Block31Block43Value3
].
            recoveredBlock20Block31PC := 57.
        ].
        recoveredBlock20Block31Step = 57 ifTrue: [
            recoveredBlock20Block31Stack2 := (recoveredBlock20Block31Stack2) propagateLevel: (recoveredBlock20Block31Stack3) lookup: (recoveredBlock20Block31Stack4).
            recoveredBlock20Block31PC := 59.
        ].
        recoveredBlock20Block31Step = 59 ifTrue: [
            (recoveredBlock20Block31Stack2) ifTrue: [recoveredBlock20Block31PC := 62] ifFalse: [recoveredBlock20Block31PC := 68].
        ].
        recoveredBlock20Block31Step = 62 ifTrue: [
            recoveredBlock20Block31PC := 63.
        ].
        recoveredBlock20Block31Step = 63 ifTrue: [
            recoveredBlock20Block31Stack1 := false.
            recoveredBlock20Block31PC := 64.
        ].
        recoveredBlock20Block31Step = 64 ifTrue: [
            recoveredBlock20Block31Stack2 := recoveredBlock20Block31Stack1.
            recoveredBlock20Block31PC := 65.
        ].
        recoveredBlock20Block31Step = 65 ifTrue: [
            recoveredLocal1 := recoveredBlock20Block31Stack2.
            recoveredBlock20Block31PC := 68.
        ].
        recoveredBlock20Block31Step = 68 ifTrue: [
            recoveredBlock20Block31Result := recoveredBlock20Block31Stack1.
            recoveredBlock20Block31Done := true.
        ].
    ].
    recoveredBlock20Block31Result
].
    (recoveredBlock20Value0) do: (recoveredBlock20Value1).
    recoveredBlock20Value2 := recoveredLocal2.
    recoveredBlock20Value3 := (recoveredBlock20Value2) + (1).
    recoveredLocal2 := recoveredBlock20Value3.
    recoveredBlock20Value4 := recoveredLocal1.
    recoveredBlock20Value4
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) whileFalse.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20434ebc; bytecode file offset 0xd317b0"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDeclMap.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) associations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280fdb58Arg1 :block280fdb58Arg2 | 
    | block280fdb58Value0 block280fdb58Value1 block280fdb58Value2 block280fdb58Value3 block280fdb58Value4 block280fdb58Value5 block280fdb58Value6 |
    block280fdb58Value0 := block280fdb58Arg1.
    block280fdb58Value1 := (block280fdb58Value0) key.
    block280fdb58Value2 := (block280fdb58Value1) errLabelWithScope.
    block280fdb58Value3 := block280fdb58Arg2.
    block280fdb58Value4 := (block280fdb58Value3) key.
    block280fdb58Value5 := (block280fdb58Value4) errLabelWithScope.
    block280fdb58Value6 := (block280fdb58Value2) < (block280fdb58Value5).
    block280fdb58Value6
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 recoveredBlock38Value11 recoveredBlock38Value12 recoveredBlock38Value13 recoveredBlock38Value14 recoveredBlock38Value15 recoveredBlock38Value16 recoveredBlock38Value17 recoveredBlock38Value18 recoveredBlock38Value19 recoveredBlock38Value20 |
    recoveredBlock38Value0 := recoveredLocal2.
    recoveredBlock38Value1 := (recoveredBlock38Value0) ownerDocument.
    recoveredBlock38Value2 := (self) class.
    recoveredBlock38Value3 := (recoveredBlock38Value2) xmlItemName.
    recoveredBlock38Value4 := (recoveredBlock38Value1) createElement: (recoveredBlock38Value3).
    recoveredLocal1 := recoveredBlock38Value4.
    recoveredBlock38Value5 := recoveredLocal1.
    recoveredBlock38Value6 := (self) class.
    recoveredBlock38Value7 := recoveredBlock38Arg1.
    recoveredBlock38Value8 := (recoveredBlock38Value7) key.
    recoveredBlock38Value9 := recoveredArg2.
    recoveredBlock38Value10 := recoveredLocal1.
    recoveredBlock38Value11 := (recoveredBlock38Value6) varDeclElement: (recoveredBlock38Value8) context: (recoveredBlock38Value9) owner: (recoveredBlock38Value10).
    (recoveredBlock38Value5) appendChild: (recoveredBlock38Value11).
    recoveredBlock38Value12 := recoveredLocal1.
    recoveredBlock38Value13 := recoveredBlock38Arg1.
    recoveredBlock38Value14 := (recoveredBlock38Value13) value.
    recoveredBlock38Value15 := recoveredLocal1.
    recoveredBlock38Value16 := recoveredArg2.
    recoveredBlock38Value17 := (recoveredBlock38Value14) asDOM: (recoveredBlock38Value15) context: (recoveredBlock38Value16).
    (recoveredBlock38Value12) appendChild: (recoveredBlock38Value17).
    recoveredBlock38Value18 := recoveredLocal2.
    recoveredBlock38Value19 := recoveredLocal1.
    recoveredBlock38Value20 := (recoveredBlock38Value18) appendChild: (recoveredBlock38Value19).
    recoveredBlock38Value20
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d1af0; bytecode file offset 0xdce3d8"
!SGMdReferenceAnalysisCollection methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) name.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) class.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) xmlItemName.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 32] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) failedToLoadAnalysisInfo.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) contents.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block36Arg1 | 
    | recoveredBlock8Block36Stack0 recoveredBlock8Block36Stack1 recoveredBlock8Block36Stack2 recoveredBlock8Block36Stack3 recoveredBlock8Block36Stack4 recoveredBlock8Block36Stack5 recoveredBlock8Block36PC recoveredBlock8Block36Step recoveredBlock8Block36Done recoveredBlock8Block36Result |
    recoveredBlock8Block36Stack0 := self.
    recoveredBlock8Block36PC := 42.
    recoveredBlock8Block36Done := false.
    [recoveredBlock8Block36Done not] whileTrue: [
        recoveredBlock8Block36Step := recoveredBlock8Block36PC.
        recoveredBlock8Block36Step = 42 ifTrue: [
            recoveredBlock8Block36Stack1 := recoveredBlock8Block36Arg1.
            recoveredBlock8Block36PC := 43.
        ].
        recoveredBlock8Block36Step = 43 ifTrue: [
            recoveredBlock8Block36Stack1 := (recoveredBlock8Block36Stack1) name.
            recoveredBlock8Block36PC := 44.
        ].
        recoveredBlock8Block36Step = 44 ifTrue: [
            recoveredBlock8Block36Stack2 := SGMdReferenceAnalysisInfo.
            recoveredBlock8Block36PC := 46.
        ].
        recoveredBlock8Block36Step = 46 ifTrue: [
            recoveredBlock8Block36Stack2 := (recoveredBlock8Block36Stack2) xmlName.
            recoveredBlock8Block36PC := 48.
        ].
        recoveredBlock8Block36Step = 48 ifTrue: [
            recoveredBlock8Block36Stack1 := (recoveredBlock8Block36Stack1) = (recoveredBlock8Block36Stack2).
            recoveredBlock8Block36PC := 49.
        ].
        recoveredBlock8Block36Step = 49 ifTrue: [
            (recoveredBlock8Block36Stack1) ifTrue: [recoveredBlock8Block36PC := 52] ifFalse: [recoveredBlock8Block36PC := 90].
        ].
        recoveredBlock8Block36Step = 52 ifTrue: [
            recoveredBlock8Block36Stack1 := recoveredBlock8Local1.
            recoveredBlock8Block36PC := 55.
        ].
        recoveredBlock8Block36Step = 55 ifTrue: [
            recoveredBlock8Block36Stack2 := [
    | recoveredBlock8Block36Block55Value0 recoveredBlock8Block36Block55Value1 |
    recoveredBlock8Block36Block55Value0 := recoveredArg3.
    recoveredBlock8Block36Block55Value1 := (recoveredBlock8Block36Block55Value0) failedToLoadAnalysisInfo.
    ^recoveredBlock8Block36Block55Value1
].
            recoveredBlock8Block36PC := 68.
        ].
        recoveredBlock8Block36Step = 68 ifTrue: [
            (recoveredBlock8Block36Stack1) notNil: (recoveredBlock8Block36Stack2).
            recoveredBlock8Block36PC := 70.
        ].
        recoveredBlock8Block36Step = 70 ifTrue: [
            recoveredBlock8Block36Stack1 := SGMdReferenceAnalysisInfo.
            recoveredBlock8Block36PC := 72.
        ].
        recoveredBlock8Block36Step = 72 ifTrue: [
            recoveredBlock8Block36Stack2 := recoveredBlock8Block36Arg1.
            recoveredBlock8Block36PC := 73.
        ].
        recoveredBlock8Block36Step = 73 ifTrue: [
            recoveredBlock8Block36Stack3 := recoveredArg2.
            recoveredBlock8Block36PC := 76.
        ].
        recoveredBlock8Block36Step = 76 ifTrue: [
            recoveredBlock8Block36Stack4 := recoveredArg3.
            recoveredBlock8Block36PC := 79.
        ].
        recoveredBlock8Block36Step = 79 ifTrue: [
            recoveredBlock8Block36Stack1 := (recoveredBlock8Block36Stack1) fromDOM: (recoveredBlock8Block36Stack2) in: (recoveredBlock8Block36Stack3) context: (recoveredBlock8Block36Stack4).
            recoveredBlock8Block36PC := 82.
        ].
        recoveredBlock8Block36Step = 82 ifTrue: [
            recoveredBlock8Block36Stack2 := recoveredBlock8Block36Stack1.
            recoveredBlock8Block36PC := 83.
        ].
        recoveredBlock8Block36Step = 83 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Block36Stack2.
            recoveredBlock8Block36PC := 86.
        ].
        recoveredBlock8Block36Step = 86 ifTrue: [
            recoveredBlock8Block36PC := 120.
        ].
        recoveredBlock8Block36Step = 90 ifTrue: [
            recoveredBlock8Block36Stack1 := recoveredBlock8Local2.
            recoveredBlock8Block36PC := 93.
        ].
        recoveredBlock8Block36Step = 93 ifTrue: [
            recoveredBlock8Block36Stack2 := [
    | recoveredBlock8Block36Block93Value0 recoveredBlock8Block36Block93Value1 |
    recoveredBlock8Block36Block93Value0 := recoveredArg3.
    recoveredBlock8Block36Block93Value1 := (recoveredBlock8Block36Block93Value0) failedToLoadAnalysisInfo.
    ^recoveredBlock8Block36Block93Value1
].
            recoveredBlock8Block36PC := 106.
        ].
        recoveredBlock8Block36Step = 106 ifTrue: [
            (recoveredBlock8Block36Stack1) notNil: (recoveredBlock8Block36Stack2).
            recoveredBlock8Block36PC := 108.
        ].
        recoveredBlock8Block36Step = 108 ifTrue: [
            recoveredBlock8Block36Stack1 := self.
            recoveredBlock8Block36PC := 109.
        ].
        recoveredBlock8Block36Step = 109 ifTrue: [
            recoveredBlock8Block36Stack1 := (recoveredBlock8Block36Stack1) class.
            recoveredBlock8Block36PC := 110.
        ].
        recoveredBlock8Block36Step = 110 ifTrue: [
            recoveredBlock8Block36Stack2 := recoveredBlock8Block36Arg1.
            recoveredBlock8Block36PC := 111.
        ].
        recoveredBlock8Block36Step = 111 ifTrue: [
            recoveredBlock8Block36Stack3 := recoveredArg3.
            recoveredBlock8Block36PC := 114.
        ].
        recoveredBlock8Block36Step = 114 ifTrue: [
            recoveredBlock8Block36Stack1 := (recoveredBlock8Block36Stack1) getExtendVarDeclFrom: (recoveredBlock8Block36Stack2) context: (recoveredBlock8Block36Stack3).
            recoveredBlock8Block36PC := 116.
        ].
        recoveredBlock8Block36Step = 116 ifTrue: [
            recoveredBlock8Block36Stack2 := recoveredBlock8Block36Stack1.
            recoveredBlock8Block36PC := 117.
        ].
        recoveredBlock8Block36Step = 117 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Block36Stack2.
            recoveredBlock8Block36PC := 120.
        ].
        recoveredBlock8Block36Step = 120 ifTrue: [
            recoveredBlock8Block36Result := recoveredBlock8Block36Stack1.
            recoveredBlock8Block36Done := true.
        ].
    ].
    recoveredBlock8Block36Result
].
            recoveredBlock8PC := 121.
        ].
        recoveredBlock8Step = 121 ifTrue: [
            (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 123.
        ].
        recoveredBlock8Step = 123 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 126.
        ].
        recoveredBlock8Step = 126 ifTrue: [
            (recoveredBlock8Stack1 == nil) ifTrue: [recoveredBlock8PC := 136] ifFalse: [recoveredBlock8PC := 130].
        ].
        recoveredBlock8Step = 130 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 133.
        ].
        recoveredBlock8Step = 133 ifTrue: [
            (recoveredBlock8Stack1 ~~ nil) ifTrue: [recoveredBlock8PC := 142] ifFalse: [recoveredBlock8PC := 136].
        ].
        recoveredBlock8Step = 136 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 139.
        ].
        recoveredBlock8Step = 139 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) failedToLoadAnalysisInfo.
            recoveredBlock8PC := 141.
        ].
        recoveredBlock8Step = 141 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 142 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) varDeclMap.
            recoveredBlock8PC := 144.
        ].
        recoveredBlock8Step = 144 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 147.
        ].
        recoveredBlock8Step = 147 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 150.
        ].
        recoveredBlock8Step = 150 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) put: (recoveredBlock8Stack2).
            recoveredBlock8PC := 152.
        ].
        recoveredBlock8Step = 152 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

