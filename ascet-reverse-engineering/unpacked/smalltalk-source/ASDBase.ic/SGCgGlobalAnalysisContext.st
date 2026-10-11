"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bcd8; bytecode file offset 0x908be4"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
imports
    | recoveredValue0 |
    recoveredValue0 := (self) importsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027ce4; bytecode file offset 0x934580"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
allComponentInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) importsTable.
    recoveredValue1 := (recoveredValue0) allComponentInterfaces.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006798c; bytecode file offset 0x9646f8"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
methodDecl
    | recoveredValue0 |
    recoveredValue0 := methodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069968; bytecode file offset 0x966bdc"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
sourceMap
    | recoveredValue0 |
    recoveredValue0 := sourceMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b688; bytecode file offset 0x96873c"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
referenceAnalysisResult
    | recoveredValue0 |
    recoveredValue0 := referenceAnalysisResult.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a798; bytecode file offset 0x997194"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
lookupClassInterface: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) importsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) lookup: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a89f8; bytecode file offset 0x9a52ac"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
methodDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodDecl := recoveredValue0.
    ownerClassInterface := nil.
    ^self
! !

"ASDBase.ic method 0x200ab8a0; bytecode file offset 0x9a8250"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
sourceForId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sourceMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bfacc; bytecode file offset 0x9bd228"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
ownerClassInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerClassInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c10; bytecode file offset 0x9bdf14"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
sourceMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceMap := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b98; bytecode file offset 0x9bf474"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
referenceAnalysisResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    referenceAnalysisResult := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011feec; bytecode file offset 0xa1c7b8"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
lookupClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) failedToLoadAnalysisInfo.
    recoveredBlock5Value0
].
    recoveredValue2 := (self) lookupClassInterface: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20134e18; bytecode file offset 0xa316d4"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
lookupMethodDecl: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) failedToLoadAnalysisInfo.
    recoveredBlock6Value0
].
    recoveredValue3 := (self) lookupMethodDecl: (recoveredValue0) in: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2014bb88; bytecode file offset 0xa4844c"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
findClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getAttribute: ('scopeClassId').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getAttribute: ('scopeImplId').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) findClass: (recoveredValue4) impl: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017f52c; bytecode file offset 0xa7bde4"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
nextSourceId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nextSourceId.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            nextSourceId := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nextSourceId.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            nextSourceId := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nextSourceId.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ae680; bytecode file offset 0xaaaf48"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
ownerClassInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ownerClassInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) classId.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) implId.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) findClass: (recoveredStack2) impl: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ownerClassInterface := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ownerClassInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b55e4; bytecode file offset 0xab1eac"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
lookupMethodDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) scope.
    recoveredValue2 := (recoveredValue1) mdlKey.
    recoveredValue3 := (self) lookupClassInterface: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (self) lookupMethodDecl: (recoveredBlock10Value0) in: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue5 := (recoveredValue3) ifNotNil: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201be16c; bytecode file offset 0xabaa2c"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
addSource: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) getSourceId: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'sourceId'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024b1d4; bytecode file offset 0xb47ab0"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
calculateCommonPrefix: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:block280deb4cArg1 :block280deb4cArg2 | 
    | block280deb4cStack0 block280deb4cStack1 block280deb4cStack2 block280deb4cStack3 block280deb4cPC block280deb4cStep block280deb4cDone block280deb4cResult |
    block280deb4cStack0 := self.
    block280deb4cPC := 4.
    block280deb4cDone := false.
    [block280deb4cDone not] whileTrue: [
        block280deb4cStep := block280deb4cPC.
        block280deb4cStep = 4 ifTrue: [
            block280deb4cStack1 := block280deb4cArg1.
            block280deb4cPC := 5.
        ].
        block280deb4cStep = 5 ifTrue: [
            (block280deb4cStack1 ~~ nil) ifTrue: [block280deb4cPC := 12] ifFalse: [block280deb4cPC := 8].
        ].
        block280deb4cStep = 8 ifTrue: [
            block280deb4cStack1 := block280deb4cArg2.
            block280deb4cPC := 9.
        ].
        block280deb4cStep = 9 ifTrue: [
            block280deb4cPC := 15.
        ].
        block280deb4cStep = 12 ifTrue: [
            block280deb4cStack1 := block280deb4cArg1.
            block280deb4cPC := 13.
        ].
        block280deb4cStep = 13 ifTrue: [
            block280deb4cStack2 := block280deb4cArg2.
            block280deb4cPC := 14.
        ].
        block280deb4cStep = 14 ifTrue: [
            block280deb4cStack1 := (block280deb4cStack1) commonPrefixWith: (block280deb4cStack2).
            block280deb4cPC := 15.
        ].
        block280deb4cStep = 15 ifTrue: [
            block280deb4cResult := block280deb4cStack1.
            block280deb4cDone := true.
        ].
    ].
    block280deb4cResult
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024b1ec; bytecode file offset 0xb47ab0"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
calculateCommonPostfix: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:block280deb70Arg1 :block280deb70Arg2 | 
    | block280deb70Stack0 block280deb70Stack1 block280deb70Stack2 block280deb70Stack3 block280deb70PC block280deb70Step block280deb70Done block280deb70Result |
    block280deb70Stack0 := self.
    block280deb70PC := 4.
    block280deb70Done := false.
    [block280deb70Done not] whileTrue: [
        block280deb70Step := block280deb70PC.
        block280deb70Step = 4 ifTrue: [
            block280deb70Stack1 := block280deb70Arg1.
            block280deb70PC := 5.
        ].
        block280deb70Step = 5 ifTrue: [
            (block280deb70Stack1 ~~ nil) ifTrue: [block280deb70PC := 12] ifFalse: [block280deb70PC := 8].
        ].
        block280deb70Step = 8 ifTrue: [
            block280deb70Stack1 := block280deb70Arg2.
            block280deb70PC := 9.
        ].
        block280deb70Step = 9 ifTrue: [
            block280deb70PC := 15.
        ].
        block280deb70Step = 12 ifTrue: [
            block280deb70Stack1 := block280deb70Arg1.
            block280deb70PC := 13.
        ].
        block280deb70Step = 13 ifTrue: [
            block280deb70Stack2 := block280deb70Arg2.
            block280deb70PC := 14.
        ].
        block280deb70Step = 14 ifTrue: [
            block280deb70Stack1 := (block280deb70Stack1) commonPostfixWith: (block280deb70Stack2).
            block280deb70PC := 15.
        ].
        block280deb70Step = 15 ifTrue: [
            block280deb70Result := block280deb70Stack1.
            block280deb70Done := true.
        ].
    ].
    block280deb70Result
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20253f2c; bytecode file offset 0xb507f8"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
failedToLoadAnalysisInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 9998.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerClassInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 9998.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerClassInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := SGMdMethodAnalysisInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedToLoadAnalysisInfo.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025868c; bytecode file offset 0xb54f54"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
lookupMethodDecl: recoveredArg1 in: recoveredArg2 ifFail: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlKey.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) mdlKey.
    recoveredBlock11Value3 := (recoveredBlock11Value2) asString.
    recoveredBlock11Value4 := ('m_') , (recoveredBlock11Value3).
    recoveredBlock11Value5 := recoveredArg3.
    recoveredBlock11Value6 := (recoveredBlock11Value0) lookup: (recoveredBlock11Value4) ifFail: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
    recoveredValue4 := (recoveredValue0) lookup: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20295290; bytecode file offset 0xb91b4c"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
remove: recoveredArg1 prefix: recoveredArg2 postfix: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033df4c; bytecode file offset 0xc3a820"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
getSourceId: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asXMLKey: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceMap.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := Array.
    recoveredBlock40Value1 := (self) nextSourceId.
    recoveredBlock40Value2 := recoveredArg1.
    recoveredBlock40Value3 := (recoveredBlock40Value0) with: (recoveredBlock40Value1) with: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205204dc; bytecode file offset 0xe1cdc8"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
findClass: recoveredArg1 impl: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerClassInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 |
    recoveredBlock36Value0 := recoveredArg1.
    recoveredBlock36Value1 := (self) lookupClassInterface: (recoveredBlock36Value0).
    recoveredBlock36Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupClassInterface: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedToLoadAnalysisInfo.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := false.
            recoveredBlock97PC := 105.
        ].
        recoveredBlock97Step = 105 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Arg1.
            recoveredBlock97PC := 106.
        ].
        recoveredBlock97Step = 106 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) mdlClassType.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) classId.
            recoveredBlock97PC := 110.
        ].
        recoveredBlock97Step = 110 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) aliasAsIdString.
            recoveredBlock97PC := 112.
        ].
        recoveredBlock97Step = 112 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg1.
            recoveredBlock97PC := 115.
        ].
        recoveredBlock97Step = 115 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) = (recoveredBlock97Stack3).
            recoveredBlock97PC := 116.
        ].
        recoveredBlock97Step = 116 ifTrue: [
            (recoveredBlock97Stack2) ifTrue: [recoveredBlock97PC := 120] ifFalse: [recoveredBlock97PC := 127].
        ].
        recoveredBlock97Step = 120 ifTrue: [
            recoveredBlock97PC := 121.
        ].
        recoveredBlock97Step = 121 ifTrue: [
            recoveredBlock97Stack1 := recoveredBlock97Arg1.
            recoveredBlock97PC := 122.
        ].
        recoveredBlock97Step = 122 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) mdlClassType.
            recoveredBlock97PC := 124.
        ].
        recoveredBlock97Step = 124 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) implId.
            recoveredBlock97PC := 126.
        ].
        recoveredBlock97Step = 126 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) isNil.
            recoveredBlock97PC := 127.
        ].
        recoveredBlock97Step = 127 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock128Value0 |
    recoveredBlock128Value0 := (self) failedToLoadAnalysisInfo.
    recoveredBlock128Value0
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Stack0 recoveredBlock143Stack1 recoveredBlock143Stack2 recoveredBlock143Stack3 recoveredBlock143Stack4 recoveredBlock143PC recoveredBlock143Step recoveredBlock143Done recoveredBlock143Result |
    recoveredBlock143Stack0 := self.
    recoveredBlock143PC := 150.
    recoveredBlock143Done := false.
    [recoveredBlock143Done not] whileTrue: [
        recoveredBlock143Step := recoveredBlock143PC.
        recoveredBlock143Step = 150 ifTrue: [
            recoveredBlock143Stack1 := false.
            recoveredBlock143PC := 151.
        ].
        recoveredBlock143Step = 151 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 152.
        ].
        recoveredBlock143Step = 152 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) mdlClassType.
            recoveredBlock143PC := 154.
        ].
        recoveredBlock143Step = 154 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) classId.
            recoveredBlock143PC := 156.
        ].
        recoveredBlock143Step = 156 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) aliasAsIdString.
            recoveredBlock143PC := 158.
        ].
        recoveredBlock143Step = 158 ifTrue: [
            recoveredBlock143Stack3 := recoveredArg1.
            recoveredBlock143PC := 161.
        ].
        recoveredBlock143Step = 161 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) = (recoveredBlock143Stack3).
            recoveredBlock143PC := 162.
        ].
        recoveredBlock143Step = 162 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 166] ifFalse: [recoveredBlock143PC := 178].
        ].
        recoveredBlock143Step = 166 ifTrue: [
            recoveredBlock143PC := 167.
        ].
        recoveredBlock143Step = 167 ifTrue: [
            recoveredBlock143Stack1 := recoveredBlock143Arg1.
            recoveredBlock143PC := 168.
        ].
        recoveredBlock143Step = 168 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) mdlClassType.
            recoveredBlock143PC := 170.
        ].
        recoveredBlock143Step = 170 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) implId.
            recoveredBlock143PC := 172.
        ].
        recoveredBlock143Step = 172 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) aliasAsIdString.
            recoveredBlock143PC := 174.
        ].
        recoveredBlock143Step = 174 ifTrue: [
            recoveredBlock143Stack2 := recoveredArg2.
            recoveredBlock143PC := 177.
        ].
        recoveredBlock143Step = 177 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) = (recoveredBlock143Stack2).
            recoveredBlock143PC := 178.
        ].
        recoveredBlock143Step = 178 ifTrue: [
            recoveredBlock143Result := recoveredBlock143Stack1.
            recoveredBlock143Done := true.
        ].
    ].
    recoveredBlock143Result
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock179Value0 |
    recoveredBlock179Value0 := (self) failedToLoadAnalysisInfo.
    recoveredBlock179Value0
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054323c; bytecode file offset 0xe3fb64"
!SGCgGlobalAnalysisContext methodsFor: 'recovered'!
sourceMapAsXML: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SGMdMethodAnalysisInfo.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlSourceMapName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceMap.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block2810e5f8Arg1 | 
    | block2810e5f8Value0 block2810e5f8Value1 block2810e5f8Value2 |
    block2810e5f8Value0 := block2810e5f8Arg1.
    block2810e5f8Value1 := (block2810e5f8Value0) second.
    block2810e5f8Value2 := (block2810e5f8Value1) isAscetLinkSource.
    block2810e5f8Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateCommonPrefix: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'prefix'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateCommonPostfix: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'postfix'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Local1 recoveredBlock85Local2 recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 recoveredBlock85Value4 recoveredBlock85Value5 recoveredBlock85Value6 recoveredBlock85Value7 recoveredBlock85Value8 recoveredBlock85Value9 recoveredBlock85Value10 recoveredBlock85Value11 recoveredBlock85Value12 recoveredBlock85Value13 recoveredBlock85Value14 recoveredBlock85Value15 recoveredBlock85Value16 recoveredBlock85Value17 |
    recoveredBlock85Value0 := (self) sourceMap.
    recoveredBlock85Value1 := recoveredBlock85Arg1.
    recoveredBlock85Value2 := (recoveredBlock85Value0) at: (recoveredBlock85Value1).
    recoveredBlock85Local2 := recoveredBlock85Value2.
    recoveredBlock85Value3 := recoveredArg1.
    recoveredBlock85Value4 := SGLmASCETLinkSource.
    recoveredBlock85Value5 := (recoveredBlock85Value4) xmlName.
    recoveredBlock85Value6 := (recoveredBlock85Value3) createElement: (recoveredBlock85Value5).
    recoveredBlock85Local1 := recoveredBlock85Value6.
    recoveredBlock85Value7 := recoveredBlock85Local1.
    recoveredBlock85Value8 := recoveredBlock85Arg1.
    recoveredBlock85Value9 := recoveredLocal3.
    recoveredBlock85Value10 := recoveredLocal2.
    recoveredBlock85Value11 := (self) remove: (recoveredBlock85Value8) prefix: (recoveredBlock85Value9) postfix: (recoveredBlock85Value10).
    (recoveredBlock85Value7) setAttribute: ('ascetLink') value: (recoveredBlock85Value11).
    recoveredBlock85Value12 := recoveredBlock85Local1.
    recoveredBlock85Value13 := recoveredBlock85Local2.
    recoveredBlock85Value14 := (recoveredBlock85Value13) first.
    (recoveredBlock85Value12) setAttribute: ('sourceId') value: (recoveredBlock85Value14).
    recoveredBlock85Value15 := recoveredLocal5.
    recoveredBlock85Value16 := recoveredBlock85Local1.
    recoveredBlock85Value17 := (recoveredBlock85Value15) appendChild: (recoveredBlock85Value16).
    recoveredBlock85Value17
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceMap.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := [:block2810e61cArg1 | 
    | block2810e61cValue0 block2810e61cValue1 block2810e61cValue2 block2810e61cValue3 |
    block2810e61cValue0 := block2810e61cArg1.
    block2810e61cValue1 := (block2810e61cValue0) second.
    block2810e61cValue2 := (block2810e61cValue1) isAscetLinkSource.
    block2810e61cValue3 := (block2810e61cValue2) not.
    block2810e61cValue3
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := [:recoveredBlock165Arg1 | 
    | recoveredBlock165Local1 recoveredBlock165Local2 recoveredBlock165Value0 recoveredBlock165Value1 recoveredBlock165Value2 recoveredBlock165Value3 recoveredBlock165Value4 recoveredBlock165Value5 recoveredBlock165Value6 recoveredBlock165Value7 recoveredBlock165Value8 recoveredBlock165Value9 recoveredBlock165Value10 recoveredBlock165Value11 recoveredBlock165Value12 recoveredBlock165Value13 recoveredBlock165Value14 |
    recoveredBlock165Value0 := (self) sourceMap.
    recoveredBlock165Value1 := recoveredBlock165Arg1.
    recoveredBlock165Value2 := (recoveredBlock165Value0) at: (recoveredBlock165Value1).
    recoveredBlock165Local2 := recoveredBlock165Value2.
    recoveredBlock165Value3 := recoveredBlock165Local2.
    recoveredBlock165Value4 := (recoveredBlock165Value3) last.
    recoveredBlock165Value5 := recoveredLocal5.
    recoveredBlock165Value6 := (self) methodDecl.
    recoveredBlock165Value7 := (recoveredBlock165Value6) source.
    recoveredBlock165Value8 := (recoveredBlock165Value4) asDOM: (recoveredBlock165Value5) method: (recoveredBlock165Value7) context: (self).
    recoveredBlock165Local1 := recoveredBlock165Value8.
    recoveredBlock165Value9 := recoveredBlock165Local1.
    recoveredBlock165Value10 := recoveredBlock165Local2.
    recoveredBlock165Value11 := (recoveredBlock165Value10) first.
    (recoveredBlock165Value9) setAttribute: ('sourceId') value: (recoveredBlock165Value11).
    recoveredBlock165Value12 := recoveredLocal5.
    recoveredBlock165Value13 := recoveredBlock165Local1.
    recoveredBlock165Value14 := (recoveredBlock165Value12) appendChild: (recoveredBlock165Value13).
    recoveredBlock165Value14
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

