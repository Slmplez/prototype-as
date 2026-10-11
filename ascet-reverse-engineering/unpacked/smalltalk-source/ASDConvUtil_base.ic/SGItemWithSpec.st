"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20000a28; bytecode file offset 0xa478"
!SGItemWithSpec methodsFor: 'recovered'!
resetOperatorImplementationRecursive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) resetOperatorImplementationFlat: (recoveredValue0).
    recoveredValue1 := (self) allReferencedComplexElements.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) sgClass.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) resetOperatorImplementationRecursive: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDConvUtil_base.ic method 0x200011ec; bytecode file offset 0xac58"
!SGItemWithSpec methodsFor: 'recovered'!
convertToDefaultMemoryLocation: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) importLabel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ' is not modifiable -> keep component unchanged!!'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementations.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block28000c08Arg1 | 
    | block28000c08Stack0 block28000c08Stack1 block28000c08Stack2 block28000c08Stack3 block28000c08PC block28000c08Step block28000c08Done block28000c08Result |
    block28000c08Stack0 := self.
    block28000c08PC := 4.
    block28000c08Done := false.
    [block28000c08Done not] whileTrue: [
        block28000c08Step := block28000c08PC.
        block28000c08Step = 4 ifTrue: [
            block28000c08Stack1 := nil.
            block28000c08PC := 5.
        ].
        block28000c08Step = 5 ifTrue: [
            block28000c08Stack2 := block28000c08Arg1.
            block28000c08PC := 6.
        ].
        block28000c08Step = 6 ifTrue: [
            block28000c08Stack2 := (block28000c08Stack2) isRBDBUndefinedObject.
            block28000c08PC := 8.
        ].
        block28000c08Step = 8 ifTrue: [
            (block28000c08Stack2) ifTrue: [block28000c08PC := 16] ifFalse: [block28000c08PC := 12].
        ].
        block28000c08Step = 12 ifTrue: [
            block28000c08PC := 13.
        ].
        block28000c08Step = 13 ifTrue: [
            block28000c08Stack1 := block28000c08Arg1.
            block28000c08PC := 14.
        ].
        block28000c08Step = 14 ifTrue: [
            block28000c08Stack1 := (block28000c08Stack1) convertToDefaultMemoryLocation.
            block28000c08PC := 16.
        ].
        block28000c08Step = 16 ifTrue: [
            block28000c08Result := block28000c08Stack1.
            block28000c08Done := true.
        ].
    ].
    block28000c08Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := classImplementationConfig.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block28000c2cArg1 | 
    nil
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) convertToDefaultMemoryLocation.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x200013d4; bytecode file offset 0xae58"
!SGItemWithSpec methodsFor: 'recovered'!
resetOperatorImplementationFlat: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWrite.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'No read/write access: '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildFolderPathName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementations.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block28000cbcArg1 | 
    | block28000cbcValue0 block28000cbcValue1 block28000cbcValue2 block28000cbcValue3 |
    block28000cbcValue0 := block28000cbcArg1.
    block28000cbcValue1 := (block28000cbcValue0) operatorImplementation.
    block28000cbcValue2 := (block28000cbcValue1) isEmpty.
    block28000cbcValue3 := (block28000cbcValue2) not.
    block28000cbcValue3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:block28000ce0Arg1 | 
    | block28000ce0Value0 block28000ce0Value1 |
    block28000ce0Value0 := block28000ce0Arg1.
    block28000ce0Value1 := (block28000ce0Value0) resetOperatorImplementation.
    block28000ce0Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) recreateLogicModel.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x200015f4; bytecode file offset 0xb06c"
!SGItemWithSpec methodsFor: 'recovered'!
convertToRedundant: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) importLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ' is not modifiable -> keep component unchanged!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := true.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            (recoveredBlock37Stack1) setRedundant: (recoveredBlock37Stack2).
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isRedundant.
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 56] ifFalse: [recoveredBlock37PC := 72].
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack2 := '('.
            recoveredBlock37PC := 62.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredBlock37Stack4 := nil.
            recoveredBlock37PC := 64.
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) ascetLink: (recoveredBlock37Stack4).
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) , (recoveredBlock37Stack3).
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            recoveredBlock37Stack3 := ') set to redundant'.
            recoveredBlock37PC := 69.
        ].
        recoveredBlock37Step = 69 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) , (recoveredBlock37Stack3).
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) addImportantInfoText: (recoveredBlock37Stack2).
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x2000171c; bytecode file offset 0xb17c"
!SGItemWithSpec methodsFor: 'recovered'!
convertOperatorImplToImplCastMonitor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super convertOperatorImplToImplCastMonitor: (recoveredValue0).
    recoveredValue1 := (self) specifications.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) collectOperatorAliasNames.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 76] ifFalse: [recoveredBlock13PC := 28].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack3 := [
    ^nil
].
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack2 := 2.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := [
    ^nil
].
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 64] ifFalse: [recoveredBlock13PC := 72].
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := 'Convert operator impl not supported yet!!'.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) addWarningText: (recoveredBlock13Stack2).
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack3.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDConvUtil_base.ic method 0x20001a30; bytecode file offset 0xb4fc"
!SGItemWithSpec methodsFor: 'recovered'!
convertMatrixReferencesToVariableReferences: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) importLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ' is not modifiable -> keep component unchanged!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) shouldBeConvertedToVariableReference.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 42] ifFalse: [recoveredBlock27PC := 82].
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) sgClass.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isSGMatrix.
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 50] ifFalse: [recoveredBlock27PC := 82].
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) hasFixedSize.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 56] ifFalse: [recoveredBlock27PC := 82].
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) sgClass.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            (recoveredBlock27Stack1) setToVariableSize.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack2 := '('.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            recoveredBlock27Stack4 := nil.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) ascetLink: (recoveredBlock27Stack4).
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack3 := ') set to variable matrix.'.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            (recoveredBlock27Stack1) addImportantInfoText: (recoveredBlock27Stack2).
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack1 := true.
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20001a7c; bytecode file offset 0xb4fc"
!SGItemWithSpec methodsFor: 'recovered'!
convertArrayReferencesToVariableReferences: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) importLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ' is not modifiable -> keep component unchanged!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) shouldBeConvertedToVariableReference.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 42] ifFalse: [recoveredBlock27PC := 82].
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) sgClass.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isSGVector.
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 50] ifFalse: [recoveredBlock27PC := 82].
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) hasFixedSize.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 56] ifFalse: [recoveredBlock27PC := 82].
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) sgClass.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            (recoveredBlock27Stack1) setToVariableSize.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack2 := '('.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            recoveredBlock27Stack4 := nil.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) ascetLink: (recoveredBlock27Stack4).
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack3 := ') set to variable array.'.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            (recoveredBlock27Stack1) addImportantInfoText: (recoveredBlock27Stack2).
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack1 := true.
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20001b2c; bytecode file offset 0xb5b4"
!SGItemWithSpec methodsFor: 'recovered'!
convertToNonVolatile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) importLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ' is not modifiable -> keep component unchanged!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block28000d94Arg1 | 
    | block28000d94Stack0 block28000d94Stack1 block28000d94Stack2 block28000d94Stack3 block28000d94PC block28000d94Step block28000d94Done block28000d94Result |
    block28000d94Stack0 := self.
    block28000d94PC := 4.
    block28000d94Done := false.
    [block28000d94Done not] whileTrue: [
        block28000d94Step := block28000d94PC.
        block28000d94Step = 4 ifTrue: [
            block28000d94Stack1 := false.
            block28000d94PC := 5.
        ].
        block28000d94Step = 5 ifTrue: [
            block28000d94Stack2 := block28000d94Arg1.
            block28000d94PC := 6.
        ].
        block28000d94Step = 6 ifTrue: [
            block28000d94Stack2 := (block28000d94Stack2) isPrimitive.
            block28000d94PC := 8.
        ].
        block28000d94Step = 8 ifTrue: [
            (block28000d94Stack2) ifTrue: [block28000d94PC := 12] ifFalse: [block28000d94PC := 22].
        ].
        block28000d94Step = 12 ifTrue: [
            block28000d94Stack2 := block28000d94Arg1.
            block28000d94PC := 13.
        ].
        block28000d94Step = 13 ifTrue: [
            block28000d94Stack2 := (block28000d94Stack2) isParameter.
            block28000d94PC := 15.
        ].
        block28000d94Step = 15 ifTrue: [
            (block28000d94Stack2) ifTrue: [block28000d94PC := 18] ifFalse: [block28000d94PC := 22].
        ].
        block28000d94Step = 18 ifTrue: [
            block28000d94PC := 19.
        ].
        block28000d94Step = 19 ifTrue: [
            block28000d94Stack1 := block28000d94Arg1.
            block28000d94PC := 20.
        ].
        block28000d94Step = 20 ifTrue: [
            block28000d94Stack1 := (block28000d94Stack1) isVolatile.
            block28000d94PC := 22.
        ].
        block28000d94Step = 22 ifTrue: [
            block28000d94Result := block28000d94Stack1.
            block28000d94Done := true.
        ].
    ].
    block28000d94Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariablesSelect: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 recoveredBlock61Value5 recoveredBlock61Value6 recoveredBlock61Value7 recoveredBlock61Value8 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    (recoveredBlock61Value0) setNonVolatile.
    recoveredBlock61Value1 := recoveredArg1.
    recoveredBlock61Value2 := (self) pathName.
    recoveredBlock61Value3 := (recoveredBlock61Value2) , (' - parameter: ').
    recoveredBlock61Value4 := recoveredBlock61Arg1.
    recoveredBlock61Value5 := (recoveredBlock61Value4) elementName.
    recoveredBlock61Value6 := (recoveredBlock61Value3) , (recoveredBlock61Value5).
    recoveredBlock61Value7 := (recoveredBlock61Value6) , (' converted to nonvolatile').
    recoveredBlock61Value8 := (recoveredBlock61Value1) addImportantInfoText: (recoveredBlock61Value7).
    recoveredBlock61Value8
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20001c80; bytecode file offset 0xb708"
!SGItemWithSpec methodsFor: 'recovered'!
convertToVolatile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) importLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ' is not modifiable -> keep component unchanged!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block28000db8Arg1 | 
    | block28000db8Stack0 block28000db8Stack1 block28000db8Stack2 block28000db8Stack3 block28000db8PC block28000db8Step block28000db8Done block28000db8Result |
    block28000db8Stack0 := self.
    block28000db8PC := 4.
    block28000db8Done := false.
    [block28000db8Done not] whileTrue: [
        block28000db8Step := block28000db8PC.
        block28000db8Step = 4 ifTrue: [
            block28000db8Stack1 := false.
            block28000db8PC := 5.
        ].
        block28000db8Step = 5 ifTrue: [
            block28000db8Stack2 := block28000db8Arg1.
            block28000db8PC := 6.
        ].
        block28000db8Step = 6 ifTrue: [
            block28000db8Stack2 := (block28000db8Stack2) isPrimitive.
            block28000db8PC := 8.
        ].
        block28000db8Step = 8 ifTrue: [
            (block28000db8Stack2) ifTrue: [block28000db8PC := 12] ifFalse: [block28000db8PC := 23].
        ].
        block28000db8Step = 12 ifTrue: [
            block28000db8Stack2 := block28000db8Arg1.
            block28000db8PC := 13.
        ].
        block28000db8Step = 13 ifTrue: [
            block28000db8Stack2 := (block28000db8Stack2) isVariable.
            block28000db8PC := 15.
        ].
        block28000db8Step = 15 ifTrue: [
            (block28000db8Stack2) ifTrue: [block28000db8PC := 18] ifFalse: [block28000db8PC := 23].
        ].
        block28000db8Step = 18 ifTrue: [
            block28000db8PC := 19.
        ].
        block28000db8Step = 19 ifTrue: [
            block28000db8Stack1 := block28000db8Arg1.
            block28000db8PC := 20.
        ].
        block28000db8Step = 20 ifTrue: [
            block28000db8Stack1 := (block28000db8Stack1) isVolatile.
            block28000db8PC := 22.
        ].
        block28000db8Step = 22 ifTrue: [
            block28000db8Stack1 := (block28000db8Stack1) not.
            block28000db8PC := 23.
        ].
        block28000db8Step = 23 ifTrue: [
            block28000db8Result := block28000db8Stack1.
            block28000db8Done := true.
        ].
    ].
    block28000db8Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariablesSelect: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 recoveredBlock63Value5 recoveredBlock63Value6 recoveredBlock63Value7 recoveredBlock63Value8 |
    recoveredBlock63Value0 := recoveredBlock63Arg1.
    (recoveredBlock63Value0) setVolatile.
    recoveredBlock63Value1 := recoveredArg1.
    recoveredBlock63Value2 := (self) pathName.
    recoveredBlock63Value3 := (recoveredBlock63Value2) , (' - variable: ').
    recoveredBlock63Value4 := recoveredBlock63Arg1.
    recoveredBlock63Value5 := (recoveredBlock63Value4) elementName.
    recoveredBlock63Value6 := (recoveredBlock63Value3) , (recoveredBlock63Value5).
    recoveredBlock63Value7 := (recoveredBlock63Value6) , (' converted to volatile').
    recoveredBlock63Value8 := (recoveredBlock63Value1) addImportantInfoText: (recoveredBlock63Value7).
    recoveredBlock63Value8
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x200028a4; bytecode file offset 0xc35c"
!SGItemWithSpec methodsFor: 'recovered'!
convertFromSystemConstantToConstant: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63069'.
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
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ' is not modifiable and will not be converted!!'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block28001064Arg1 | 
    | block28001064Stack0 block28001064Stack1 block28001064Stack2 block28001064Stack3 block28001064PC block28001064Step block28001064Done block28001064Result |
    block28001064Stack0 := self.
    block28001064PC := 4.
    block28001064Done := false.
    [block28001064Done not] whileTrue: [
        block28001064Step := block28001064PC.
        block28001064Step = 4 ifTrue: [
            block28001064Stack1 := false.
            block28001064PC := 5.
        ].
        block28001064Step = 5 ifTrue: [
            block28001064Stack2 := block28001064Arg1.
            block28001064PC := 6.
        ].
        block28001064Step = 6 ifTrue: [
            block28001064Stack2 := (block28001064Stack2) isPrimitive.
            block28001064PC := 8.
        ].
        block28001064Step = 8 ifTrue: [
            (block28001064Stack2) ifTrue: [block28001064PC := 12] ifFalse: [block28001064PC := 18].
        ].
        block28001064Step = 12 ifTrue: [
            block28001064PC := 13.
        ].
        block28001064Step = 13 ifTrue: [
            block28001064Stack1 := block28001064Arg1.
            block28001064PC := 14.
        ].
        block28001064Step = 14 ifTrue: [
            block28001064Stack1 := (block28001064Stack1) sgClass.
            block28001064PC := 16.
        ].
        block28001064Step = 16 ifTrue: [
            block28001064Stack1 := (block28001064Stack1) isCharTable.
            block28001064PC := 18.
        ].
        block28001064Step = 18 ifTrue: [
            block28001064Result := block28001064Stack1.
            block28001064Done := true.
        ].
    ].
    block28001064Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariablesSelect: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 73.
        ].
        recoveredBlock65Step = 73 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 74.
        ].
        recoveredBlock65Step = 74 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) isConstantOrSystemConstant.
            recoveredBlock65PC := 76.
        ].
        recoveredBlock65Step = 76 ifTrue: [
            (recoveredBlock65Stack2) ifTrue: [recoveredBlock65PC := 80] ifFalse: [recoveredBlock65PC := 105].
        ].
        recoveredBlock65Step = 80 ifTrue: [
            recoveredBlock65PC := 81.
        ].
        recoveredBlock65Step = 81 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 82.
        ].
        recoveredBlock65Step = 82 ifTrue: [
            recoveredBlock65Stack2 := true.
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            (recoveredBlock65Stack1) setParameter: (recoveredBlock65Stack2).
            recoveredBlock65PC := 85.
        ].
        recoveredBlock65Step = 85 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 88.
        ].
        recoveredBlock65Step = 88 ifTrue: [
            recoveredBlock65Stack2 := self.
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) pathName.
            recoveredBlock65PC := 90.
        ].
        recoveredBlock65Step = 90 ifTrue: [
            recoveredBlock65Stack3 := ' - chartable: '.
            recoveredBlock65PC := 92.
        ].
        recoveredBlock65Step = 92 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) , (recoveredBlock65Stack3).
            recoveredBlock65PC := 94.
        ].
        recoveredBlock65Step = 94 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) elementName.
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) , (recoveredBlock65Stack3).
            recoveredBlock65PC := 99.
        ].
        recoveredBlock65Step = 99 ifTrue: [
            recoveredBlock65Stack3 := ' converted from const to param'.
            recoveredBlock65PC := 101.
        ].
        recoveredBlock65Step = 101 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) , (recoveredBlock65Stack3).
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) addImportantInfoText: (recoveredBlock65Stack2).
            recoveredBlock65PC := 105.
        ].
        recoveredBlock65Step = 105 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := [:block28001088Arg1 | 
    | block28001088Value0 block28001088Value1 |
    block28001088Value0 := block28001088Arg1.
    block28001088Value1 := (block28001088Value0) isSystemConstant.
    block28001088Value1
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariablesSelect: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 231].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Stack0 recoveredBlock139Stack1 recoveredBlock139Stack2 recoveredBlock139Stack3 recoveredBlock139Stack4 recoveredBlock139PC recoveredBlock139Step recoveredBlock139Done recoveredBlock139Result |
    recoveredBlock139Stack0 := self.
    recoveredBlock139PC := 146.
    recoveredBlock139Done := false.
    [recoveredBlock139Done not] whileTrue: [
        recoveredBlock139Step := recoveredBlock139PC.
        recoveredBlock139Step = 146 ifTrue: [
            recoveredBlock139Stack1 := recoveredBlock139Arg1.
            recoveredBlock139PC := 147.
        ].
        recoveredBlock139Step = 147 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) isUniqueDataConfigured.
            recoveredBlock139PC := 149.
        ].
        recoveredBlock139Step = 149 ifTrue: [
            (recoveredBlock139Stack1) ifTrue: [recoveredBlock139PC := 152] ifFalse: [recoveredBlock139PC := 158].
        ].
        recoveredBlock139Step = 152 ifTrue: [
            recoveredBlock139Stack1 := self.
            recoveredBlock139PC := 153.
        ].
        recoveredBlock139Step = 153 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) getOrCreateClassDataConfig.
            recoveredBlock139PC := 155.
        ].
        recoveredBlock139Step = 155 ifTrue: [
            recoveredBlock139PC := 161.
        ].
        recoveredBlock139Step = 158 ifTrue: [
            recoveredBlock139Stack1 := self.
            recoveredBlock139PC := 159.
        ].
        recoveredBlock139Step = 159 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) defaultOrCreateData.
            recoveredBlock139PC := 161.
        ].
        recoveredBlock139Step = 161 ifTrue: [
            recoveredLocal3 := recoveredBlock139Stack1.
            recoveredBlock139PC := 164.
        ].
        recoveredBlock139Step = 164 ifTrue: [
            recoveredBlock139Stack1 := recoveredLocal3.
            recoveredBlock139PC := 167.
        ].
        recoveredBlock139Step = 167 ifTrue: [
            recoveredBlock139Stack2 := recoveredBlock139Arg1.
            recoveredBlock139PC := 168.
        ].
        recoveredBlock139Step = 168 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) configForElement: (recoveredBlock139Stack2).
            recoveredBlock139PC := 170.
        ].
        recoveredBlock139Step = 170 ifTrue: [
            recoveredLocal2 := recoveredBlock139Stack1.
            recoveredBlock139PC := 173.
        ].
        recoveredBlock139Step = 173 ifTrue: [
            recoveredBlock139Stack1 := recoveredBlock139Arg1.
            recoveredBlock139PC := 174.
        ].
        recoveredBlock139Step = 174 ifTrue: [
            recoveredBlock139Stack2 := true.
            recoveredBlock139PC := 175.
        ].
        recoveredBlock139Step = 175 ifTrue: [
            (recoveredBlock139Stack1) setConstant: (recoveredBlock139Stack2).
            recoveredBlock139PC := 177.
        ].
        recoveredBlock139Step = 177 ifTrue: [
            recoveredBlock139Stack1 := recoveredBlock139Arg1.
            recoveredBlock139PC := 178.
        ].
        recoveredBlock139Step = 178 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) isUniqueDataConfigured.
            recoveredBlock139PC := 180.
        ].
        recoveredBlock139Step = 180 ifTrue: [
            (recoveredBlock139Stack1) ifTrue: [recoveredBlock139PC := 184] ifFalse: [recoveredBlock139PC := 190].
        ].
        recoveredBlock139Step = 184 ifTrue: [
            recoveredBlock139Stack1 := self.
            recoveredBlock139PC := 185.
        ].
        recoveredBlock139Step = 185 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) getOrCreateClassDataConfig.
            recoveredBlock139PC := 187.
        ].
        recoveredBlock139Step = 187 ifTrue: [
            recoveredBlock139PC := 193.
        ].
        recoveredBlock139Step = 190 ifTrue: [
            recoveredBlock139Stack1 := self.
            recoveredBlock139PC := 191.
        ].
        recoveredBlock139Step = 191 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) defaultOrCreateData.
            recoveredBlock139PC := 193.
        ].
        recoveredBlock139Step = 193 ifTrue: [
            recoveredLocal3 := recoveredBlock139Stack1.
            recoveredBlock139PC := 196.
        ].
        recoveredBlock139Step = 196 ifTrue: [
            recoveredBlock139Stack1 := recoveredLocal3.
            recoveredBlock139PC := 199.
        ].
        recoveredBlock139Step = 199 ifTrue: [
            recoveredBlock139Stack2 := recoveredLocal2.
            recoveredBlock139PC := 202.
        ].
        recoveredBlock139Step = 202 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Arg1.
            recoveredBlock139PC := 203.
        ].
        recoveredBlock139Step = 203 ifTrue: [
            (recoveredBlock139Stack1) setConfig: (recoveredBlock139Stack2) forElement: (recoveredBlock139Stack3).
            recoveredBlock139PC := 205.
        ].
        recoveredBlock139Step = 205 ifTrue: [
            recoveredBlock139Stack1 := recoveredArg1.
            recoveredBlock139PC := 208.
        ].
        recoveredBlock139Step = 208 ifTrue: [
            recoveredBlock139Stack2 := self.
            recoveredBlock139PC := 209.
        ].
        recoveredBlock139Step = 209 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) pathName.
            recoveredBlock139PC := 210.
        ].
        recoveredBlock139Step = 210 ifTrue: [
            recoveredBlock139Stack3 := ' - variable: '.
            recoveredBlock139PC := 212.
        ].
        recoveredBlock139Step = 212 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) , (recoveredBlock139Stack3).
            recoveredBlock139PC := 214.
        ].
        recoveredBlock139Step = 214 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Arg1.
            recoveredBlock139PC := 215.
        ].
        recoveredBlock139Step = 215 ifTrue: [
            recoveredBlock139Stack3 := (recoveredBlock139Stack3) elementName.
            recoveredBlock139PC := 217.
        ].
        recoveredBlock139Step = 217 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) , (recoveredBlock139Stack3).
            recoveredBlock139PC := 219.
        ].
        recoveredBlock139Step = 219 ifTrue: [
            recoveredBlock139Stack3 := ' converted to const'.
            recoveredBlock139PC := 221.
        ].
        recoveredBlock139Step = 221 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) , (recoveredBlock139Stack3).
            recoveredBlock139PC := 223.
        ].
        recoveredBlock139Step = 223 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) addImportantInfoText: (recoveredBlock139Stack2).
            recoveredBlock139PC := 225.
        ].
        recoveredBlock139Step = 225 ifTrue: [
            recoveredBlock139Result := recoveredBlock139Stack1.
            recoveredBlock139Done := true.
        ].
    ].
    recoveredBlock139Result
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) userModified.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20002a14; bytecode file offset 0xc4bc"
!SGItemWithSpec methodsFor: 'recovered'!
checkOperatorImplMonitor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super checkOperatorImplMonitor: (recoveredValue0).
    recoveredValue1 := (self) specifications.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) collectOperatorAliasNames.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 232] ifFalse: [recoveredBlock13PC := 32].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack3 := [
    ^nil
].
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack2 := 2.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack3 := [
    ^nil
].
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 78] ifFalse: [recoveredBlock13PC := 224].
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) implementations.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block82Arg1 | 
    | recoveredBlock13Block82Local1 recoveredBlock13Block82Local2 recoveredBlock13Block82Stack0 recoveredBlock13Block82Stack1 recoveredBlock13Block82Stack2 recoveredBlock13Block82Stack3 recoveredBlock13Block82Stack4 recoveredBlock13Block82Stack5 recoveredBlock13Block82Stack6 recoveredBlock13Block82Stack7 recoveredBlock13Block82PC recoveredBlock13Block82Step recoveredBlock13Block82Done recoveredBlock13Block82Result |
    recoveredBlock13Block82Stack0 := self.
    recoveredBlock13Block82PC := 88.
    recoveredBlock13Block82Done := false.
    [recoveredBlock13Block82Done not] whileTrue: [
        recoveredBlock13Block82Step := recoveredBlock13Block82PC.
        recoveredBlock13Block82Step = 88 ifTrue: [
            recoveredBlock13Block82Stack1 := nil.
            recoveredBlock13Block82PC := 89.
        ].
        recoveredBlock13Block82Step = 89 ifTrue: [
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Arg1.
            recoveredBlock13Block82PC := 92.
        ].
        recoveredBlock13Block82Step = 92 ifTrue: [
            recoveredBlock13Block82Stack2 := (recoveredBlock13Block82Stack2) operatorImplementation.
            recoveredBlock13Block82PC := 94.
        ].
        recoveredBlock13Block82Step = 94 ifTrue: [
            recoveredBlock13Block82Stack2 := (recoveredBlock13Block82Stack2) notEmpty.
            recoveredBlock13Block82PC := 96.
        ].
        recoveredBlock13Block82Step = 96 ifTrue: [
            (recoveredBlock13Block82Stack2) ifTrue: [recoveredBlock13Block82PC := 100] ifFalse: [recoveredBlock13Block82PC := 221].
        ].
        recoveredBlock13Block82Step = 100 ifTrue: [
            recoveredBlock13Block82PC := 101.
        ].
        recoveredBlock13Block82Step = 101 ifTrue: [
            recoveredBlock13Block82Stack1 := recoveredBlock13Local2.
            recoveredBlock13Block82PC := 104.
        ].
        recoveredBlock13Block82Step = 104 ifTrue: [
            recoveredBlock13Block82Stack2 := [:recoveredBlock13Block82Block104Arg1 | 
    | recoveredBlock13Block82Block104Value0 recoveredBlock13Block82Block104Value1 recoveredBlock13Block82Block104Value2 recoveredBlock13Block82Block104Value3 |
    recoveredBlock13Block82Block104Value0 := recoveredBlock13Block82Arg1.
    recoveredBlock13Block82Block104Value1 := (recoveredBlock13Block82Block104Value0) operatorImplementation.
    recoveredBlock13Block82Block104Value2 := recoveredBlock13Block82Block104Arg1.
    recoveredBlock13Block82Block104Value3 := (recoveredBlock13Block82Block104Value1) includesKey: (recoveredBlock13Block82Block104Value2).
    recoveredBlock13Block82Block104Value3
].
            recoveredBlock13Block82PC := 119.
        ].
        recoveredBlock13Block82Step = 119 ifTrue: [
            recoveredBlock13Block82Stack3 := [].
            recoveredBlock13Block82PC := 121.
        ].
        recoveredBlock13Block82Step = 121 ifTrue: [
            recoveredBlock13Block82Stack1 := (recoveredBlock13Block82Stack1) detect: (recoveredBlock13Block82Stack2) ifNone: (recoveredBlock13Block82Stack3).
            recoveredBlock13Block82PC := 123.
        ].
        recoveredBlock13Block82Step = 123 ifTrue: [
            recoveredBlock13Block82Local2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 126.
        ].
        recoveredBlock13Block82Step = 126 ifTrue: [
            recoveredBlock13Block82Stack1 := nil.
            recoveredBlock13Block82PC := 127.
        ].
        recoveredBlock13Block82Step = 127 ifTrue: [
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Local2.
            recoveredBlock13Block82PC := 130.
        ].
        recoveredBlock13Block82Step = 130 ifTrue: [
            (recoveredBlock13Block82Stack2 == nil) ifTrue: [recoveredBlock13Block82PC := 217] ifFalse: [recoveredBlock13Block82PC := 134].
        ].
        recoveredBlock13Block82Step = 134 ifTrue: [
            recoveredBlock13Block82PC := 135.
        ].
        recoveredBlock13Block82Step = 135 ifTrue: [
            recoveredBlock13Block82Stack1 := ReadWriteStream.
            recoveredBlock13Block82PC := 137.
        ].
        recoveredBlock13Block82Step = 137 ifTrue: [
            recoveredBlock13Block82Stack2 := ''.
            recoveredBlock13Block82PC := 139.
        ].
        recoveredBlock13Block82Step = 139 ifTrue: [
            recoveredBlock13Block82Stack1 := (recoveredBlock13Block82Stack1) on: (recoveredBlock13Block82Stack2).
            recoveredBlock13Block82PC := 141.
        ].
        recoveredBlock13Block82Step = 141 ifTrue: [
            recoveredBlock13Block82Local1 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 144.
        ].
        recoveredBlock13Block82Step = 144 ifTrue: [
            recoveredBlock13Block82Stack1 := recoveredBlock13Block82Local1.
            recoveredBlock13Block82PC := 147.
        ].
        recoveredBlock13Block82Step = 147 ifTrue: [
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 148.
        ].
        recoveredBlock13Block82Step = 148 ifTrue: [
            recoveredBlock13Block82Stack3 := self.
            recoveredBlock13Block82PC := 149.
        ].
        recoveredBlock13Block82Step = 149 ifTrue: [
            recoveredBlock13Block82Stack3 := (recoveredBlock13Block82Stack3) importLabel.
            recoveredBlock13Block82PC := 151.
        ].
        recoveredBlock13Block82Step = 151 ifTrue: [
            (recoveredBlock13Block82Stack2) nextPutAll: (recoveredBlock13Block82Stack3).
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 154.
        ].
        recoveredBlock13Block82Step = 154 ifTrue: [
            (recoveredBlock13Block82Stack2) cr.
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 157.
        ].
        recoveredBlock13Block82Step = 157 ifTrue: [
            recoveredBlock13Block82Stack3 := ' -> Spec/Hierarchy path: '.
            recoveredBlock13Block82PC := 159.
        ].
        recoveredBlock13Block82Step = 159 ifTrue: [
            recoveredBlock13Block82Stack4 := recoveredBlock13Local1.
            recoveredBlock13Block82PC := 162.
        ].
        recoveredBlock13Block82Step = 162 ifTrue: [
            recoveredBlock13Block82Stack5 := recoveredBlock13Block82Local2.
            recoveredBlock13Block82PC := 165.
        ].
        recoveredBlock13Block82Step = 165 ifTrue: [
            recoveredBlock13Block82Stack6 := [
    '<>'
].
            recoveredBlock13Block82PC := 167.
        ].
        recoveredBlock13Block82Step = 167 ifTrue: [
            recoveredBlock13Block82PC := 173.
        ].
        recoveredBlock13Block82Step = 173 ifTrue: [
            recoveredBlock13Block82Stack4 := (recoveredBlock13Block82Stack4) at: (recoveredBlock13Block82Stack5) ifAbsent: (recoveredBlock13Block82Stack6).
            recoveredBlock13Block82PC := 175.
        ].
        recoveredBlock13Block82Step = 175 ifTrue: [
            recoveredBlock13Block82Stack3 := (recoveredBlock13Block82Stack3) , (recoveredBlock13Block82Stack4).
            recoveredBlock13Block82PC := 177.
        ].
        recoveredBlock13Block82Step = 177 ifTrue: [
            (recoveredBlock13Block82Stack2) nextPutAll: (recoveredBlock13Block82Stack3).
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 180.
        ].
        recoveredBlock13Block82Step = 180 ifTrue: [
            (recoveredBlock13Block82Stack2) cr.
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 183.
        ].
        recoveredBlock13Block82Step = 183 ifTrue: [
            recoveredBlock13Block82Stack3 := ' -> Impl: '.
            recoveredBlock13Block82PC := 185.
        ].
        recoveredBlock13Block82Step = 185 ifTrue: [
            recoveredBlock13Block82Stack4 := recoveredBlock13Block82Arg1.
            recoveredBlock13Block82PC := 188.
        ].
        recoveredBlock13Block82Step = 188 ifTrue: [
            recoveredBlock13Block82Stack4 := (recoveredBlock13Block82Stack4) label.
            recoveredBlock13Block82PC := 190.
        ].
        recoveredBlock13Block82Step = 190 ifTrue: [
            recoveredBlock13Block82Stack3 := (recoveredBlock13Block82Stack3) , (recoveredBlock13Block82Stack4).
            recoveredBlock13Block82PC := 192.
        ].
        recoveredBlock13Block82Step = 192 ifTrue: [
            (recoveredBlock13Block82Stack2) nextPutAll: (recoveredBlock13Block82Stack3).
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82PC := 195.
        ].
        recoveredBlock13Block82Step = 195 ifTrue: [
            (recoveredBlock13Block82Stack2) cr.
            recoveredBlock13Block82PC := 197.
        ].
        recoveredBlock13Block82Step = 197 ifTrue: [
            recoveredBlock13Block82PC := 198.
        ].
        recoveredBlock13Block82Step = 198 ifTrue: [
            recoveredBlock13Block82Stack1 := recoveredArg1.
            recoveredBlock13Block82PC := 201.
        ].
        recoveredBlock13Block82Step = 201 ifTrue: [
            recoveredBlock13Block82Stack2 := recoveredBlock13Block82Local1.
            recoveredBlock13Block82PC := 204.
        ].
        recoveredBlock13Block82Step = 204 ifTrue: [
            recoveredBlock13Block82Stack2 := (recoveredBlock13Block82Stack2) contents.
            recoveredBlock13Block82PC := 206.
        ].
        recoveredBlock13Block82Step = 206 ifTrue: [
            (recoveredBlock13Block82Stack1) addText: (recoveredBlock13Block82Stack2).
            recoveredBlock13Block82PC := 208.
        ].
        recoveredBlock13Block82Step = 208 ifTrue: [
            recoveredBlock13Block82Stack1 := recoveredBlock13Block82Local1.
            recoveredBlock13Block82PC := 211.
        ].
        recoveredBlock13Block82Step = 211 ifTrue: [
            recoveredBlock13Block82Stack1 := (recoveredBlock13Block82Stack1) close.
            recoveredBlock13Block82PC := 213.
        ].
        recoveredBlock13Block82Step = 213 ifTrue: [
            recoveredBlock13Block82Stack2 := nil.
            recoveredBlock13Block82PC := 214.
        ].
        recoveredBlock13Block82Step = 214 ifTrue: [
            recoveredBlock13Block82Local1 := recoveredBlock13Block82Stack2.
            recoveredBlock13Block82PC := 217.
        ].
        recoveredBlock13Block82Step = 217 ifTrue: [
            recoveredBlock13Block82Stack2 := nil.
            recoveredBlock13Block82PC := 218.
        ].
        recoveredBlock13Block82Step = 218 ifTrue: [
            recoveredBlock13Block82Local2 := recoveredBlock13Block82Stack2.
            recoveredBlock13Block82PC := 221.
        ].
        recoveredBlock13Block82Step = 221 ifTrue: [
            recoveredBlock13Block82Result := recoveredBlock13Block82Stack1.
            recoveredBlock13Block82Done := true.
        ].
    ].
    recoveredBlock13Block82Result
].
            recoveredBlock13PC := 222.
        ].
        recoveredBlock13Step = 222 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 224.
        ].
        recoveredBlock13Step = 224 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 225.
        ].
        recoveredBlock13Step = 225 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 226.
        ].
        recoveredBlock13Step = 226 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack3.
            recoveredBlock13PC := 229.
        ].
        recoveredBlock13Step = 229 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 232.
        ].
        recoveredBlock13Step = 232 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDConvUtil_base.ic method 0x20003de4; bytecode file offset 0xd8a4"
!SGItemWithSpec methodsFor: 'recovered'!
convertToAnsiCReplaceString: recoveredArg1 monitor: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            super convertToAnsiCReplaceString: (recoveredStack1) monitor: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) elementName.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local2.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isValidANSICIdentifier.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 70] ifFalse: [recoveredBlock15PC := 32].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local2.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) getValidANSICIdentifierReplace: (recoveredBlock15Stack2).
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg2.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack2 := self.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) pathName.
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack3 := ' - variable: '.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) elementName.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Stack3 := ' -> '.
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 58.
        ].
        recoveredBlock15Step = 58 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Local1.
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            (recoveredBlock15Stack1) addImportantInfoText: (recoveredBlock15Stack2).
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 64.
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Local1.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) renameVariable: (recoveredBlock15Stack2) to: (recoveredBlock15Stack3).
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack2 := nil.
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack2.
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) allVariablesDo: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodElements.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Local1 recoveredBlock76Local2 recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := nil.
            recoveredBlock76PC := 83.
        ].
        recoveredBlock76Step = 83 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 84.
        ].
        recoveredBlock76Step = 84 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) isReturn.
            recoveredBlock76PC := 86.
        ].
        recoveredBlock76Step = 86 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 142] ifFalse: [recoveredBlock76PC := 90].
        ].
        recoveredBlock76Step = 90 ifTrue: [
            recoveredBlock76PC := 91.
        ].
        recoveredBlock76Step = 91 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 92.
        ].
        recoveredBlock76Step = 92 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) elementName.
            recoveredBlock76PC := 93.
        ].
        recoveredBlock76Step = 93 ifTrue: [
            recoveredBlock76Local2 := recoveredBlock76Stack1.
            recoveredBlock76PC := 94.
        ].
        recoveredBlock76Step = 94 ifTrue: [
            recoveredBlock76Stack1 := nil.
            recoveredBlock76PC := 95.
        ].
        recoveredBlock76Step = 95 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Local2.
            recoveredBlock76PC := 96.
        ].
        recoveredBlock76Step = 96 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) isValidANSICIdentifier.
            recoveredBlock76PC := 97.
        ].
        recoveredBlock76Step = 97 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 140] ifFalse: [recoveredBlock76PC := 100].
        ].
        recoveredBlock76Step = 100 ifTrue: [
            recoveredBlock76PC := 101.
        ].
        recoveredBlock76Step = 101 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Local2.
            recoveredBlock76PC := 102.
        ].
        recoveredBlock76Step = 102 ifTrue: [
            recoveredBlock76Stack2 := recoveredArg1.
            recoveredBlock76PC := 105.
        ].
        recoveredBlock76Step = 105 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) getValidANSICIdentifierReplace: (recoveredBlock76Stack2).
            recoveredBlock76PC := 107.
        ].
        recoveredBlock76Step = 107 ifTrue: [
            recoveredBlock76Local1 := recoveredBlock76Stack1.
            recoveredBlock76PC := 108.
        ].
        recoveredBlock76Step = 108 ifTrue: [
            recoveredBlock76Stack1 := recoveredArg2.
            recoveredBlock76PC := 111.
        ].
        recoveredBlock76Step = 111 ifTrue: [
            recoveredBlock76Stack2 := self.
            recoveredBlock76PC := 112.
        ].
        recoveredBlock76Step = 112 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) pathName.
            recoveredBlock76PC := 114.
        ].
        recoveredBlock76Step = 114 ifTrue: [
            recoveredBlock76Stack3 := ' - methodargument: '.
            recoveredBlock76PC := 116.
        ].
        recoveredBlock76Step = 116 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 118.
        ].
        recoveredBlock76Step = 118 ifTrue: [
            recoveredBlock76Stack3 := recoveredBlock76Arg1.
            recoveredBlock76PC := 119.
        ].
        recoveredBlock76Step = 119 ifTrue: [
            recoveredBlock76Stack3 := (recoveredBlock76Stack3) elementName.
            recoveredBlock76PC := 120.
        ].
        recoveredBlock76Step = 120 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 122.
        ].
        recoveredBlock76Step = 122 ifTrue: [
            recoveredBlock76Stack3 := ' -> '.
            recoveredBlock76PC := 124.
        ].
        recoveredBlock76Step = 124 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 126.
        ].
        recoveredBlock76Step = 126 ifTrue: [
            recoveredBlock76Stack3 := recoveredBlock76Local1.
            recoveredBlock76PC := 127.
        ].
        recoveredBlock76Step = 127 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 129.
        ].
        recoveredBlock76Step = 129 ifTrue: [
            (recoveredBlock76Stack1) addImportantInfoText: (recoveredBlock76Stack2).
            recoveredBlock76PC := 131.
        ].
        recoveredBlock76Step = 131 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 132.
        ].
        recoveredBlock76Step = 132 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Local1.
            recoveredBlock76PC := 133.
        ].
        recoveredBlock76Step = 133 ifTrue: [
            (recoveredBlock76Stack1) elementName: (recoveredBlock76Stack2).
            recoveredBlock76PC := 135.
        ].
        recoveredBlock76Step = 135 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 136.
        ].
        recoveredBlock76Step = 136 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) userModified.
            recoveredBlock76PC := 138.
        ].
        recoveredBlock76Step = 138 ifTrue: [
            recoveredBlock76Stack2 := nil.
            recoveredBlock76PC := 139.
        ].
        recoveredBlock76Step = 139 ifTrue: [
            recoveredBlock76Local1 := recoveredBlock76Stack2.
            recoveredBlock76PC := 140.
        ].
        recoveredBlock76Step = 140 ifTrue: [
            recoveredBlock76Stack2 := nil.
            recoveredBlock76PC := 141.
        ].
        recoveredBlock76Step = 141 ifTrue: [
            recoveredBlock76Local2 := recoveredBlock76Stack2.
            recoveredBlock76PC := 142.
        ].
        recoveredBlock76Step = 142 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Local1 recoveredBlock148Local2 recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148Stack4 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Arg1.
            recoveredBlock148PC := 155.
        ].
        recoveredBlock148Step = 155 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) methodName.
            recoveredBlock148PC := 157.
        ].
        recoveredBlock148Step = 157 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 158.
        ].
        recoveredBlock148Step = 158 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 159.
        ].
        recoveredBlock148Step = 159 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local2.
            recoveredBlock148PC := 160.
        ].
        recoveredBlock148Step = 160 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) isValidANSICIdentifier.
            recoveredBlock148PC := 161.
        ].
        recoveredBlock148Step = 161 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 205] ifFalse: [recoveredBlock148PC := 164].
        ].
        recoveredBlock148Step = 164 ifTrue: [
            recoveredBlock148PC := 165.
        ].
        recoveredBlock148Step = 165 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local2.
            recoveredBlock148PC := 166.
        ].
        recoveredBlock148Step = 166 ifTrue: [
            recoveredBlock148Stack2 := recoveredArg1.
            recoveredBlock148PC := 169.
        ].
        recoveredBlock148Step = 169 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) getValidANSICIdentifierReplace: (recoveredBlock148Stack2).
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack1.
            recoveredBlock148PC := 172.
        ].
        recoveredBlock148Step = 172 ifTrue: [
            recoveredBlock148Stack1 := recoveredArg2.
            recoveredBlock148PC := 175.
        ].
        recoveredBlock148Step = 175 ifTrue: [
            recoveredBlock148Stack2 := self.
            recoveredBlock148PC := 176.
        ].
        recoveredBlock148Step = 176 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) pathName.
            recoveredBlock148PC := 178.
        ].
        recoveredBlock148Step = 178 ifTrue: [
            recoveredBlock148Stack3 := ' - method: '.
            recoveredBlock148PC := 180.
        ].
        recoveredBlock148Step = 180 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) , (recoveredBlock148Stack3).
            recoveredBlock148PC := 182.
        ].
        recoveredBlock148Step = 182 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Arg1.
            recoveredBlock148PC := 183.
        ].
        recoveredBlock148Step = 183 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) methodName.
            recoveredBlock148PC := 185.
        ].
        recoveredBlock148Step = 185 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) , (recoveredBlock148Stack3).
            recoveredBlock148PC := 187.
        ].
        recoveredBlock148Step = 187 ifTrue: [
            recoveredBlock148Stack3 := ' -> '.
            recoveredBlock148PC := 189.
        ].
        recoveredBlock148Step = 189 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) , (recoveredBlock148Stack3).
            recoveredBlock148PC := 191.
        ].
        recoveredBlock148Step = 191 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local1.
            recoveredBlock148PC := 192.
        ].
        recoveredBlock148Step = 192 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) , (recoveredBlock148Stack3).
            recoveredBlock148PC := 194.
        ].
        recoveredBlock148Step = 194 ifTrue: [
            (recoveredBlock148Stack1) addImportantInfoText: (recoveredBlock148Stack2).
            recoveredBlock148PC := 196.
        ].
        recoveredBlock148Step = 196 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Arg1.
            recoveredBlock148PC := 197.
        ].
        recoveredBlock148Step = 197 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local1.
            recoveredBlock148PC := 198.
        ].
        recoveredBlock148Step = 198 ifTrue: [
            (recoveredBlock148Stack1) methodName: (recoveredBlock148Stack2).
            recoveredBlock148PC := 200.
        ].
        recoveredBlock148Step = 200 ifTrue: [
            recoveredBlock148Stack1 := self.
            recoveredBlock148PC := 201.
        ].
        recoveredBlock148Step = 201 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) userModified.
            recoveredBlock148PC := 203.
        ].
        recoveredBlock148Step = 203 ifTrue: [
            recoveredBlock148Stack2 := nil.
            recoveredBlock148PC := 204.
        ].
        recoveredBlock148Step = 204 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack2.
            recoveredBlock148PC := 205.
        ].
        recoveredBlock148Step = 205 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := [:recoveredBlock211Arg1 | 
    | recoveredBlock211Value0 recoveredBlock211Value1 recoveredBlock211Value2 recoveredBlock211Value3 |
    recoveredBlock211Value0 := recoveredBlock211Arg1.
    recoveredBlock211Value1 := recoveredArg1.
    recoveredBlock211Value2 := recoveredArg2.
    recoveredBlock211Value3 := (recoveredBlock211Value0) convertToAnsiCReplaceString: (recoveredBlock211Value1) monitor: (recoveredBlock211Value2).
    recoveredBlock211Value3
].
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) isModified.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 241].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) recreateLogicModel.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) datas.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementations.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Local1 recoveredBlock249Local2 recoveredBlock249Stack0 recoveredBlock249Stack1 recoveredBlock249Stack2 recoveredBlock249Stack3 recoveredBlock249Stack4 recoveredBlock249PC recoveredBlock249Step recoveredBlock249Done recoveredBlock249Result |
    recoveredBlock249Stack0 := self.
    recoveredBlock249PC := 256.
    recoveredBlock249Done := false.
    [recoveredBlock249Done not] whileTrue: [
        recoveredBlock249Step := recoveredBlock249PC.
        recoveredBlock249Step = 256 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 257.
        ].
        recoveredBlock249Step = 257 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Arg1.
            recoveredBlock249PC := 258.
        ].
        recoveredBlock249Step = 258 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) isRBDBUndefinedObject.
            recoveredBlock249PC := 260.
        ].
        recoveredBlock249Step = 260 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 317] ifFalse: [recoveredBlock249PC := 264].
        ].
        recoveredBlock249Step = 264 ifTrue: [
            recoveredBlock249PC := 265.
        ].
        recoveredBlock249Step = 265 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 266.
        ].
        recoveredBlock249Step = 266 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) label.
            recoveredBlock249PC := 268.
        ].
        recoveredBlock249Step = 268 ifTrue: [
            recoveredBlock249Local2 := recoveredBlock249Stack1.
            recoveredBlock249PC := 269.
        ].
        recoveredBlock249Step = 269 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 270.
        ].
        recoveredBlock249Step = 270 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Local2.
            recoveredBlock249PC := 271.
        ].
        recoveredBlock249Step = 271 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) isValidANSICIdentifier.
            recoveredBlock249PC := 272.
        ].
        recoveredBlock249Step = 272 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 315] ifFalse: [recoveredBlock249PC := 276].
        ].
        recoveredBlock249Step = 276 ifTrue: [
            recoveredBlock249PC := 277.
        ].
        recoveredBlock249Step = 277 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Local2.
            recoveredBlock249PC := 278.
        ].
        recoveredBlock249Step = 278 ifTrue: [
            recoveredBlock249Stack2 := recoveredArg1.
            recoveredBlock249PC := 281.
        ].
        recoveredBlock249Step = 281 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) getValidANSICIdentifierReplace: (recoveredBlock249Stack2).
            recoveredBlock249PC := 283.
        ].
        recoveredBlock249Step = 283 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack1.
            recoveredBlock249PC := 284.
        ].
        recoveredBlock249Step = 284 ifTrue: [
            recoveredBlock249Stack1 := recoveredArg2.
            recoveredBlock249PC := 287.
        ].
        recoveredBlock249Step = 287 ifTrue: [
            recoveredBlock249Stack2 := self.
            recoveredBlock249PC := 288.
        ].
        recoveredBlock249Step = 288 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) pathName.
            recoveredBlock249PC := 290.
        ].
        recoveredBlock249Step = 290 ifTrue: [
            recoveredBlock249Stack3 := ' - configuration: '.
            recoveredBlock249PC := 292.
        ].
        recoveredBlock249Step = 292 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) , (recoveredBlock249Stack3).
            recoveredBlock249PC := 294.
        ].
        recoveredBlock249Step = 294 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local2.
            recoveredBlock249PC := 295.
        ].
        recoveredBlock249Step = 295 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) , (recoveredBlock249Stack3).
            recoveredBlock249PC := 297.
        ].
        recoveredBlock249Step = 297 ifTrue: [
            recoveredBlock249Stack3 := ' -> '.
            recoveredBlock249PC := 299.
        ].
        recoveredBlock249Step = 299 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) , (recoveredBlock249Stack3).
            recoveredBlock249PC := 301.
        ].
        recoveredBlock249Step = 301 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local1.
            recoveredBlock249PC := 302.
        ].
        recoveredBlock249Step = 302 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) , (recoveredBlock249Stack3).
            recoveredBlock249PC := 304.
        ].
        recoveredBlock249Step = 304 ifTrue: [
            (recoveredBlock249Stack1) addImportantInfoText: (recoveredBlock249Stack2).
            recoveredBlock249PC := 306.
        ].
        recoveredBlock249Step = 306 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 307.
        ].
        recoveredBlock249Step = 307 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Local1.
            recoveredBlock249PC := 308.
        ].
        recoveredBlock249Step = 308 ifTrue: [
            (recoveredBlock249Stack1) label: (recoveredBlock249Stack2).
            recoveredBlock249PC := 310.
        ].
        recoveredBlock249Step = 310 ifTrue: [
            recoveredBlock249Stack1 := self.
            recoveredBlock249PC := 311.
        ].
        recoveredBlock249Step = 311 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) userModified.
            recoveredBlock249PC := 313.
        ].
        recoveredBlock249Step = 313 ifTrue: [
            recoveredBlock249Stack2 := nil.
            recoveredBlock249PC := 314.
        ].
        recoveredBlock249Step = 314 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack2.
            recoveredBlock249PC := 315.
        ].
        recoveredBlock249Step = 315 ifTrue: [
            recoveredBlock249Stack2 := nil.
            recoveredBlock249PC := 316.
        ].
        recoveredBlock249Step = 316 ifTrue: [
            recoveredBlock249Local2 := recoveredBlock249Stack2.
            recoveredBlock249PC := 317.
        ].
        recoveredBlock249Step = 317 ifTrue: [
            recoveredBlock249Result := recoveredBlock249Stack1.
            recoveredBlock249Done := true.
        ].
    ].
    recoveredBlock249Result
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectForItem.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 337] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectForItem.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) convertToAnsiCReplaceString: (recoveredStack1) monitor: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

