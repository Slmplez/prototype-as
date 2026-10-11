"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200671e4; bytecode file offset 0x9646f8"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
workingPoints
    | recoveredValue0 |
    recoveredValue0 := workingPoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a24; bytecode file offset 0x965b90"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
mdlClassType
    | recoveredValue0 |
    recoveredValue0 := mdlClassType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089658; bytecode file offset 0x985fa4"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
resetWorkingPoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    workingPoints := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200bf9ac; bytecode file offset 0x9bd228"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
mdlClassType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClassType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201db8ac; bytecode file offset 0xad8174"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
currentGeneratedModuleCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) workingPointsAsXML.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (self) class.
    recoveredBlock5Value2 := (recoveredBlock5Value1) codeSnippetKey.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value0) additionalCodeSnippetsAt: (recoveredBlock5Value2) put: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f53c4; bytecode file offset 0xaf1c94"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) interface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgClassTypeWithoutMethodBodies.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) resetWorkingPoints.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) interface.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mdlClassType: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            super mdlClass: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202062fc; bytecode file offset 0xb02bcc"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
workingPointsAsXML
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingPoints.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingPoints.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SimpleDOMDocument.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingPointsAsDOM: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) rootTag: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlPrintString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b47ec; bytecode file offset 0xbb10d8"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
addWorkingPointsTo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVarDeclWithInit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingPoints.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [
    | block280e4e4cValue0 block280e4e4cValue1 |
    block280e4e4cValue0 := OrderedCollection.
    block280e4e4cValue1 := (block280e4e4cValue0) new.
    block280e4e4cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [:block280e4e70Arg1 | 
    | block280e4e70Value0 block280e4e70Value1 block280e4e70Value2 |
    block280e4e70Value0 := block280e4e70Arg1.
    block280e4e70Value1 := (block280e4e70Value0) rightChild.
    block280e4e70Value2 := (block280e4e70Value1) mdlName.
    block280e4e70Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20406cc8; bytecode file offset 0xd035b0"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
specialCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDistribution.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'searchDistribution'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) addWorkingPointsTo: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlOneDCharTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'searchOneD'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'getAtOneD'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) addWorkingPointsTo: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTwoDCharTable.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'searchTwoD'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'getAtTwoD'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) addWorkingPointsTo: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20530c4c; bytecode file offset 0xe2d56c"
!SGCharTableWorkingPointAnalyzer methodsFor: 'recovered'!
workingPointsAsDOM: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlWorkingPointsName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'scopeClassName'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClassType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'scopeClassId'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClassType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) classId.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingPoints.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:block2810d614Arg1 :block2810d614Arg2 | 
    | block2810d614Value0 block2810d614Value1 block2810d614Value2 block2810d614Value3 block2810d614Value4 |
    block2810d614Value0 := block2810d614Arg1.
    block2810d614Value1 := (block2810d614Value0) errLabel.
    block2810d614Value2 := block2810d614Arg2.
    block2810d614Value3 := (block2810d614Value2) errLabel.
    block2810d614Value4 := (block2810d614Value1) < (block2810d614Value3).
    block2810d614Value4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Local1 recoveredBlock58Local2 recoveredBlock58Local3 recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal2.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack2 := recoveredArg1.
            recoveredBlock58PC := 70.
        ].
        recoveredBlock58Step = 70 ifTrue: [
            recoveredBlock58Stack3 := self.
            recoveredBlock58PC := 71.
        ].
        recoveredBlock58Step = 71 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) class.
            recoveredBlock58PC := 72.
        ].
        recoveredBlock58Step = 72 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) xmlElementName.
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) createElement: (recoveredBlock58Stack3).
            recoveredBlock58PC := 75.
        ].
        recoveredBlock58Step = 75 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Stack2.
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredBlock58Local2 := recoveredBlock58Stack3.
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            (recoveredBlock58Stack1) appendChild: (recoveredBlock58Stack2).
            recoveredBlock58PC := 81.
        ].
        recoveredBlock58Step = 81 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) getDBInterfaceGlobal.
            recoveredBlock58PC := 83.
        ].
        recoveredBlock58Step = 83 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg1.
            recoveredBlock58PC := 86.
        ].
        recoveredBlock58Step = 86 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) mdlKey.
            recoveredBlock58PC := 88.
        ].
        recoveredBlock58Step = 88 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 89.
        ].
        recoveredBlock58Step = 89 ifTrue: [
            recoveredBlock58Local1 := recoveredBlock58Stack2.
            recoveredBlock58PC := 92.
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) validateGlobalId: (recoveredBlock58Stack1).
            recoveredBlock58PC := 94.
        ].
        recoveredBlock58Step = 94 ifTrue: [
            recoveredBlock58Stack1 := 0.
            recoveredBlock58PC := 96.
        ].
        recoveredBlock58Step = 96 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) = (recoveredBlock58Stack1).
            recoveredBlock58PC := 97.
        ].
        recoveredBlock58Step = 97 ifTrue: [
            (recoveredBlock58Stack0) ifTrue: [recoveredBlock58PC := 100] ifFalse: [recoveredBlock58PC := 124].
        ].
        recoveredBlock58Step = 100 ifTrue: [
            recoveredBlock58Stack0 := recoveredBlock58Local2.
            recoveredBlock58PC := 103.
        ].
        recoveredBlock58Step = 103 ifTrue: [
            recoveredBlock58Stack1 := 'name'.
            recoveredBlock58PC := 105.
        ].
        recoveredBlock58Step = 105 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 108.
        ].
        recoveredBlock58Step = 108 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) mdlLabel.
            recoveredBlock58PC := 110.
        ].
        recoveredBlock58Step = 110 ifTrue: [
            (recoveredBlock58Stack0) setAttribute: (recoveredBlock58Stack1) value: (recoveredBlock58Stack2).
            recoveredBlock58PC := 112.
        ].
        recoveredBlock58Step = 112 ifTrue: [
            recoveredBlock58Stack0 := recoveredBlock58Local2.
            recoveredBlock58PC := 115.
        ].
        recoveredBlock58Step = 115 ifTrue: [
            recoveredBlock58Stack1 := 'alias'.
            recoveredBlock58PC := 117.
        ].
        recoveredBlock58Step = 117 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Local1.
            recoveredBlock58PC := 120.
        ].
        recoveredBlock58Step = 120 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) aliasAsIdString.
            recoveredBlock58PC := 122.
        ].
        recoveredBlock58Step = 122 ifTrue: [
            (recoveredBlock58Stack0) setAttribute: (recoveredBlock58Stack1) value: (recoveredBlock58Stack2).
            recoveredBlock58PC := 124.
        ].
        recoveredBlock58Step = 124 ifTrue: [
            recoveredBlock58Stack0 := self.
            recoveredBlock58PC := 125.
        ].
        recoveredBlock58Step = 125 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) workingPoints.
            recoveredBlock58PC := 127.
        ].
        recoveredBlock58Step = 127 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg1.
            recoveredBlock58PC := 130.
        ].
        recoveredBlock58Step = 130 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) at: (recoveredBlock58Stack1).
            recoveredBlock58PC := 132.
        ].
        recoveredBlock58Step = 132 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) last.
            recoveredBlock58PC := 134.
        ].
        recoveredBlock58Step = 134 ifTrue: [
            recoveredBlock58Stack1 := [:recoveredBlock58Block134Arg1 | 
    | recoveredBlock58Block134Local1 recoveredBlock58Block134Stack0 recoveredBlock58Block134Stack1 recoveredBlock58Block134Stack2 recoveredBlock58Block134Stack3 recoveredBlock58Block134Stack4 recoveredBlock58Block134Stack5 recoveredBlock58Block134PC recoveredBlock58Block134Step recoveredBlock58Block134Done recoveredBlock58Block134Result |
    recoveredBlock58Block134Stack0 := self.
    recoveredBlock58Block134PC := 140.
    recoveredBlock58Block134Done := false.
    [recoveredBlock58Block134Done not] whileTrue: [
        recoveredBlock58Block134Step := recoveredBlock58Block134PC.
        recoveredBlock58Block134Step = 140 ifTrue: [
            recoveredBlock58Block134Stack1 := recoveredBlock58Local2.
            recoveredBlock58Block134PC := 143.
        ].
        recoveredBlock58Block134Step = 143 ifTrue: [
            recoveredBlock58Block134Stack2 := recoveredArg1.
            recoveredBlock58Block134PC := 146.
        ].
        recoveredBlock58Block134Step = 146 ifTrue: [
            recoveredBlock58Block134Stack3 := self.
            recoveredBlock58Block134PC := 147.
        ].
        recoveredBlock58Block134Step = 147 ifTrue: [
            recoveredBlock58Block134Stack3 := (recoveredBlock58Block134Stack3) class.
            recoveredBlock58Block134PC := 148.
        ].
        recoveredBlock58Block134Step = 148 ifTrue: [
            recoveredBlock58Block134Stack3 := (recoveredBlock58Block134Stack3) xmlWorkingPointName.
            recoveredBlock58Block134PC := 150.
        ].
        recoveredBlock58Block134Step = 150 ifTrue: [
            recoveredBlock58Block134Stack2 := (recoveredBlock58Block134Stack2) createElement: (recoveredBlock58Block134Stack3).
            recoveredBlock58Block134PC := 151.
        ].
        recoveredBlock58Block134Step = 151 ifTrue: [
            recoveredBlock58Block134Stack3 := recoveredBlock58Block134Stack2.
            recoveredBlock58Block134PC := 152.
        ].
        recoveredBlock58Block134Step = 152 ifTrue: [
            recoveredBlock58Block134Local1 := recoveredBlock58Block134Stack3.
            recoveredBlock58Block134PC := 153.
        ].
        recoveredBlock58Block134Step = 153 ifTrue: [
            (recoveredBlock58Block134Stack1) appendChild: (recoveredBlock58Block134Stack2).
            recoveredBlock58Block134PC := 155.
        ].
        recoveredBlock58Block134Step = 155 ifTrue: [
            recoveredBlock58Block134Stack1 := recoveredBlock58Block134Local1.
            recoveredBlock58Block134PC := 156.
        ].
        recoveredBlock58Block134Step = 156 ifTrue: [
            recoveredBlock58Block134Stack2 := 'name'.
            recoveredBlock58Block134PC := 158.
        ].
        recoveredBlock58Block134Step = 158 ifTrue: [
            recoveredBlock58Block134Stack3 := recoveredBlock58Block134Arg1.
            recoveredBlock58Block134PC := 159.
        ].
        recoveredBlock58Block134Step = 159 ifTrue: [
            recoveredBlock58Block134Stack3 := (recoveredBlock58Block134Stack3) mdlLabel.
            recoveredBlock58Block134PC := 161.
        ].
        recoveredBlock58Block134Step = 161 ifTrue: [
            (recoveredBlock58Block134Stack1) setAttribute: (recoveredBlock58Block134Stack2) value: (recoveredBlock58Block134Stack3).
            recoveredBlock58Block134PC := 163.
        ].
        recoveredBlock58Block134Step = 163 ifTrue: [
            recoveredBlock58Block134Stack1 := nil.
            recoveredBlock58Block134PC := 164.
        ].
        recoveredBlock58Block134Step = 164 ifTrue: [
            recoveredBlock58Block134Stack2 := self.
            recoveredBlock58Block134PC := 165.
        ].
        recoveredBlock58Block134Step = 165 ifTrue: [
            recoveredBlock58Block134Stack2 := (recoveredBlock58Block134Stack2) getDBInterfaceGlobal.
            recoveredBlock58Block134PC := 167.
        ].
        recoveredBlock58Block134Step = 167 ifTrue: [
            recoveredBlock58Block134Stack3 := recoveredBlock58Block134Arg1.
            recoveredBlock58Block134PC := 168.
        ].
        recoveredBlock58Block134Step = 168 ifTrue: [
            recoveredBlock58Block134Stack3 := (recoveredBlock58Block134Stack3) mdlKey.
            recoveredBlock58Block134PC := 170.
        ].
        recoveredBlock58Block134Step = 170 ifTrue: [
            recoveredBlock58Block134Stack4 := recoveredBlock58Block134Stack3.
            recoveredBlock58Block134PC := 171.
        ].
        recoveredBlock58Block134Step = 171 ifTrue: [
            recoveredBlock58Local1 := recoveredBlock58Block134Stack4.
            recoveredBlock58Block134PC := 174.
        ].
        recoveredBlock58Block134Step = 174 ifTrue: [
            recoveredBlock58Block134Stack2 := (recoveredBlock58Block134Stack2) validateGlobalId: (recoveredBlock58Block134Stack3).
            recoveredBlock58Block134PC := 176.
        ].
        recoveredBlock58Block134Step = 176 ifTrue: [
            recoveredBlock58Block134Stack3 := 0.
            recoveredBlock58Block134PC := 178.
        ].
        recoveredBlock58Block134Step = 178 ifTrue: [
            recoveredBlock58Block134Stack2 := (recoveredBlock58Block134Stack2) = (recoveredBlock58Block134Stack3).
            recoveredBlock58Block134PC := 179.
        ].
        recoveredBlock58Block134Step = 179 ifTrue: [
            (recoveredBlock58Block134Stack2) ifTrue: [recoveredBlock58Block134PC := 182] ifFalse: [recoveredBlock58Block134PC := 193].
        ].
        recoveredBlock58Block134Step = 182 ifTrue: [
            recoveredBlock58Block134PC := 183.
        ].
        recoveredBlock58Block134Step = 183 ifTrue: [
            recoveredBlock58Block134Stack1 := recoveredBlock58Block134Local1.
            recoveredBlock58Block134PC := 184.
        ].
        recoveredBlock58Block134Step = 184 ifTrue: [
            recoveredBlock58Block134Stack2 := 'alias'.
            recoveredBlock58Block134PC := 186.
        ].
        recoveredBlock58Block134Step = 186 ifTrue: [
            recoveredBlock58Block134Stack3 := recoveredBlock58Local1.
            recoveredBlock58Block134PC := 189.
        ].
        recoveredBlock58Block134Step = 189 ifTrue: [
            recoveredBlock58Block134Stack3 := (recoveredBlock58Block134Stack3) aliasAsIdString.
            recoveredBlock58Block134PC := 191.
        ].
        recoveredBlock58Block134Step = 191 ifTrue: [
            recoveredBlock58Block134Stack1 := (recoveredBlock58Block134Stack1) setAttribute: (recoveredBlock58Block134Stack2) value: (recoveredBlock58Block134Stack3).
            recoveredBlock58Block134PC := 193.
        ].
        recoveredBlock58Block134Step = 193 ifTrue: [
            recoveredBlock58Block134Result := recoveredBlock58Block134Stack1.
            recoveredBlock58Block134Done := true.
        ].
    ].
    recoveredBlock58Block134Result
].
            recoveredBlock58PC := 194.
        ].
        recoveredBlock58Step = 194 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) do: (recoveredBlock58Stack1).
            recoveredBlock58PC := 196.
        ].
        recoveredBlock58Step = 196 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack0.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

