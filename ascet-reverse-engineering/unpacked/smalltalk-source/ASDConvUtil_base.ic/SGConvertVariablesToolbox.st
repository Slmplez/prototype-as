"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20000238; bytecode file offset 0x9c8c"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
dbAccess
    | recoveredValue0 |
    recoveredValue0 := dbAccess.
    ^recoveredValue0
! !

"ASDConvUtil_base.ic method 0x20000314; bytecode file offset 0x9d84"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGDatabaseAccess.
    recoveredValue1 := (recoveredValue0) create.
    (self) dbAccess: (recoveredValue1).
    ^self
! !

"ASDConvUtil_base.ic method 0x2000036c; bytecode file offset 0x9db0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
dbAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbAccess := recoveredValue0.
    ^self
! !

"ASDConvUtil_base.ic method 0x200005dc; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToNewConstant: recoveredArg1
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
            recoveredStack2 := [:block28000aa0Arg1 :block28000aa0Arg2 | 
    | block28000aa0Value0 block28000aa0Value1 block28000aa0Value2 |
    block28000aa0Value0 := block28000aa0Arg1.
    block28000aa0Value1 := block28000aa0Arg2.
    block28000aa0Value2 := (block28000aa0Value0) convertFromSystemConstantToConstant: (block28000aa0Value1).
    block28000aa0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Replacing system constants with constants ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x200005f4; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseDtToReadCalibration: recoveredArg1
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
            recoveredStack2 := [:block28000ac4Arg1 :block28000ac4Arg2 | 
    | block28000ac4Value0 block28000ac4Value1 block28000ac4Value2 |
    block28000ac4Value0 := block28000ac4Arg1.
    block28000ac4Value1 := block28000ac4Arg2.
    block28000ac4Value2 := (block28000ac4Value0) convertDtToReadCalibration: (block28000ac4Value1).
    block28000ac4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Set "Calibration Read" attribute for dT variables in projects ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x2000060c; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToVariableArrayReferences: recoveredArg1
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
            recoveredStack2 := [:block28000ae8Arg1 :block28000ae8Arg2 | 
    | block28000ae8Value0 block28000ae8Value1 block28000ae8Value2 |
    block28000ae8Value0 := block28000ae8Arg1.
    block28000ae8Value1 := block28000ae8Arg2.
    block28000ae8Value2 := (block28000ae8Value0) convertArrayReferencesToVariableReferences: (block28000ae8Value1).
    block28000ae8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Convert elements to variable array references ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20000624; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToNonVolatile: recoveredArg1
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
            recoveredStack2 := [:block28000b0cArg1 :block28000b0cArg2 | 
    | block28000b0cValue0 block28000b0cValue1 block28000b0cValue2 |
    block28000b0cValue0 := block28000b0cArg1.
    block28000b0cValue1 := block28000b0cArg2.
    block28000b0cValue2 := (block28000b0cValue0) convertToNonVolatile: (block28000b0cValue1).
    block28000b0cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Convert parameters to nonvolatile ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x2000063c; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToVariableMatrixReferences: recoveredArg1
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
            recoveredStack2 := [:block28000b30Arg1 :block28000b30Arg2 | 
    | block28000b30Value0 block28000b30Value1 block28000b30Value2 |
    block28000b30Value0 := block28000b30Arg1.
    block28000b30Value1 := block28000b30Arg2.
    block28000b30Value2 := (block28000b30Value0) convertMatrixReferencesToVariableReferences: (block28000b30Value1).
    block28000b30Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Convert elements to variable matrix references ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20000654; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToVolatile: recoveredArg1
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
            recoveredStack2 := [:block28000b54Arg1 :block28000b54Arg2 | 
    | block28000b54Value0 block28000b54Value1 block28000b54Value2 |
    block28000b54Value0 := block28000b54Arg1.
    block28000b54Value1 := block28000b54Arg2.
    block28000b54Value2 := (block28000b54Value0) convertToVolatile: (block28000b54Value1).
    block28000b54Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Convert variables to volatile ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x2000066c; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToRedundant: recoveredArg1
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
            recoveredStack2 := [:block28000b78Arg1 :block28000b78Arg2 | 
    | block28000b78Value0 block28000b78Value1 block28000b78Value2 |
    block28000b78Value0 := block28000b78Arg1.
    block28000b78Value1 := block28000b78Arg2.
    block28000b78Value2 := (block28000b78Value0) convertToRedundant: (block28000b78Value1).
    block28000b78Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Set redundant flag for all supported elements ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20000684; bytecode file offset 0xa0d0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToDefaultMemoryLocation: recoveredArg1
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
            recoveredStack2 := [:block28000b9cArg1 :block28000b9cArg2 | 
    | block28000b9cValue0 block28000b9cValue1 block28000b9cValue2 |
    block28000b9cValue0 := block28000b9cArg1.
    block28000b9cValue1 := block28000b9cArg2.
    block28000b9cValue2 := (block28000b9cValue0) convertToDefaultMemoryLocation: (block28000b9cValue1).
    block28000b9cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Convert elements to default memory location ...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x2000156c; bytecode file offset 0xafd8"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseRemoveCalibrationForComplex: recoveredArg1
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
            recoveredStack2 := [:block28000d4cArg1 :block28000d4cArg2 | 
    | block28000d4cStack0 block28000d4cStack1 block28000d4cStack2 block28000d4cStack3 block28000d4cPC block28000d4cStep block28000d4cDone block28000d4cResult |
    block28000d4cStack0 := self.
    block28000d4cPC := 4.
    block28000d4cDone := false.
    [block28000d4cDone not] whileTrue: [
        block28000d4cStep := block28000d4cPC.
        block28000d4cStep = 4 ifTrue: [
            block28000d4cStack1 := nil.
            block28000d4cPC := 5.
        ].
        block28000d4cStep = 5 ifTrue: [
            block28000d4cStack2 := block28000d4cArg1.
            block28000d4cPC := 8.
        ].
        block28000d4cStep = 8 ifTrue: [
            block28000d4cStack2 := (block28000d4cStack2) isGenericComponent.
            block28000d4cPC := 9.
        ].
        block28000d4cStep = 9 ifTrue: [
            (block28000d4cStack2) ifTrue: [block28000d4cPC := 67] ifFalse: [block28000d4cPC := 12].
        ].
        block28000d4cStep = 12 ifTrue: [
            block28000d4cPC := 13.
        ].
        block28000d4cStep = 13 ifTrue: [
            block28000d4cStack1 := block28000d4cArg1.
            block28000d4cPC := 16.
        ].
        block28000d4cStep = 16 ifTrue: [
            block28000d4cStack2 := [:block28000d70Arg1 | 
    | block28000d70Stack0 block28000d70Stack1 block28000d70Stack2 block28000d70Stack3 block28000d70PC block28000d70Step block28000d70Done block28000d70Result |
    block28000d70Stack0 := self.
    block28000d70PC := 4.
    block28000d70Done := false.
    [block28000d70Done not] whileTrue: [
        block28000d70Step := block28000d70PC.
        block28000d70Step = 4 ifTrue: [
            block28000d70Stack1 := false.
            block28000d70PC := 5.
        ].
        block28000d70Step = 5 ifTrue: [
            block28000d70Stack2 := block28000d70Arg1.
            block28000d70PC := 6.
        ].
        block28000d70Step = 6 ifTrue: [
            block28000d70Stack2 := (block28000d70Stack2) isPrimitive.
            block28000d70PC := 7.
        ].
        block28000d70Step = 7 ifTrue: [
            (block28000d70Stack2) ifTrue: [block28000d70PC := 31] ifFalse: [block28000d70PC := 10].
        ].
        block28000d70Step = 10 ifTrue: [
            block28000d70PC := 11.
        ].
        block28000d70Step = 11 ifTrue: [
            block28000d70Stack1 := false.
            block28000d70PC := 12.
        ].
        block28000d70Step = 12 ifTrue: [
            block28000d70Stack2 := block28000d70Arg1.
            block28000d70PC := 13.
        ].
        block28000d70Step = 13 ifTrue: [
            block28000d70Stack2 := (block28000d70Stack2) isEnumeration.
            block28000d70PC := 15.
        ].
        block28000d70Step = 15 ifTrue: [
            (block28000d70Stack2) ifTrue: [block28000d70PC := 31] ifFalse: [block28000d70PC := 18].
        ].
        block28000d70Step = 18 ifTrue: [
            block28000d70PC := 19.
        ].
        block28000d70Step = 19 ifTrue: [
            block28000d70Stack1 := false.
            block28000d70PC := 20.
        ].
        block28000d70Step = 20 ifTrue: [
            block28000d70Stack2 := block28000d70Arg1.
            block28000d70PC := 21.
        ].
        block28000d70Step = 21 ifTrue: [
            block28000d70Stack2 := (block28000d70Stack2) isARModeGroup.
            block28000d70PC := 23.
        ].
        block28000d70Step = 23 ifTrue: [
            (block28000d70Stack2) ifTrue: [block28000d70PC := 31] ifFalse: [block28000d70PC := 26].
        ].
        block28000d70Step = 26 ifTrue: [
            block28000d70PC := 27.
        ].
        block28000d70Step = 27 ifTrue: [
            block28000d70Stack1 := block28000d70Arg1.
            block28000d70PC := 28.
        ].
        block28000d70Step = 28 ifTrue: [
            block28000d70Stack1 := (block28000d70Stack1) isRecord.
            block28000d70PC := 30.
        ].
        block28000d70Step = 30 ifTrue: [
            block28000d70Stack1 := (block28000d70Stack1) not.
            block28000d70PC := 31.
        ].
        block28000d70Step = 31 ifTrue: [
            block28000d70Result := block28000d70Stack1.
            block28000d70Done := true.
        ].
    ].
    block28000d70Result
].
            block28000d4cPC := 18.
        ].
        block28000d4cStep = 18 ifTrue: [
            block28000d4cPC := 50.
        ].
        block28000d4cStep = 50 ifTrue: [
            block28000d4cStack1 := (block28000d4cStack1) allVariablesSelect: (block28000d4cStack2).
            block28000d4cPC := 52.
        ].
        block28000d4cStep = 52 ifTrue: [
            block28000d4cStack2 := [:block28000d4cBlock52Arg1 | 
    | block28000d4cBlock52Value0 block28000d4cBlock52Value1 block28000d4cBlock52Value2 |
    block28000d4cBlock52Value0 := block28000d4cBlock52Arg1.
    block28000d4cBlock52Value1 := block28000d4cArg2.
    block28000d4cBlock52Value2 := (block28000d4cBlock52Value0) convertRemoveCalibrationReadWrite: (block28000d4cBlock52Value1).
    block28000d4cBlock52Value2
].
            block28000d4cPC := 65.
        ].
        block28000d4cStep = 65 ifTrue: [
            block28000d4cStack1 := (block28000d4cStack1) do: (block28000d4cStack2).
            block28000d4cPC := 67.
        ].
        block28000d4cStep = 67 ifTrue: [
            block28000d4cResult := block28000d4cStack1.
            block28000d4cDone := true.
        ].
    ].
    block28000d4cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'Remove "Calibration Read and Write" in Complex elements'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20002628; bytecode file offset 0xc0f0"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabaseToNewIntegerTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Convert projects to new integer types ...'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGDatabaseAccess.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := SGProject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) readExactClassKeys: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:block28000f8cArg1 | 
    | block28000f8cStack0 block28000f8cStack1 block28000f8cStack2 block28000f8cStack3 block28000f8cPC block28000f8cStep block28000f8cDone block28000f8cResult |
    block28000f8cStack0 := self.
    block28000f8cPC := 4.
    block28000f8cDone := false.
    [block28000f8cDone not] whileTrue: [
        block28000f8cStep := block28000f8cPC.
        block28000f8cStep = 4 ifTrue: [
            block28000f8cStack1 := block28000f8cArg1.
            block28000f8cPC := 5.
        ].
        block28000f8cStep = 5 ifTrue: [
            block28000f8cStack2 := [:block28000fb0Arg1 | 
    nil
].
            block28000f8cPC := 7.
        ].
        block28000f8cStep = 7 ifTrue: [
            block28000f8cPC := 12.
        ].
        block28000f8cStep = 12 ifTrue: [
            block28000f8cStack1 := (block28000f8cStack1) getObjectIfUndefined: (block28000f8cStack2).
            block28000f8cPC := 14.
        ].
        block28000f8cStep = 14 ifTrue: [
            block28000f8cResult := block28000f8cStack1.
            block28000f8cDone := true.
        ].
    ].
    block28000f8cResult
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:block28000fd4Arg1 | 
    | block28000fd4Stack0 block28000fd4Stack1 block28000fd4Stack2 block28000fd4Stack3 block28000fd4PC block28000fd4Step block28000fd4Done block28000fd4Result |
    block28000fd4Stack0 := self.
    block28000fd4PC := 4.
    block28000fd4Done := false.
    [block28000fd4Done not] whileTrue: [
        block28000fd4Step := block28000fd4PC.
        block28000fd4Step = 4 ifTrue: [
            block28000fd4Stack1 := false.
            block28000fd4PC := 5.
        ].
        block28000fd4Step = 5 ifTrue: [
            block28000fd4Stack2 := block28000fd4Arg1.
            block28000fd4PC := 6.
        ].
        block28000fd4Step = 6 ifTrue: [
            (block28000fd4Stack2 == nil) ifTrue: [block28000fd4PC := 15] ifFalse: [block28000fd4PC := 10].
        ].
        block28000fd4Step = 10 ifTrue: [
            block28000fd4PC := 11.
        ].
        block28000fd4Step = 11 ifTrue: [
            block28000fd4Stack1 := block28000fd4Arg1.
            block28000fd4PC := 12.
        ].
        block28000fd4Step = 12 ifTrue: [
            block28000fd4Stack1 := (block28000fd4Stack1) isDefaultProject.
            block28000fd4PC := 14.
        ].
        block28000fd4Step = 14 ifTrue: [
            block28000fd4Stack1 := (block28000fd4Stack1) not.
            block28000fd4PC := 15.
        ].
        block28000fd4Step = 15 ifTrue: [
            block28000fd4Result := block28000fd4Stack1.
            block28000fd4Done := true.
        ].
    ].
    block28000fd4Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 |
    recoveredBlock80Value0 := recoveredLocal3.
    recoveredBlock80Value1 := [:recoveredBlock80Block89Arg1 :recoveredBlock80Block89Arg2 | 
    | recoveredBlock80Block89Value0 recoveredBlock80Block89Value1 recoveredBlock80Block89Value2 recoveredBlock80Block89Value3 recoveredBlock80Block89Value4 recoveredBlock80Block89Value5 recoveredBlock80Block89Value6 |
    recoveredBlock80Block89Value0 := recoveredBlock80Arg1.
    recoveredBlock80Block89Value1 := recoveredBlock80Block89Arg2.
    recoveredBlock80Block89Value2 := recoveredLocal3.
    recoveredBlock80Block89Value3 := (recoveredBlock80Block89Value2) size.
    recoveredBlock80Block89Value4 := (recoveredBlock80Block89Value1) / (recoveredBlock80Block89Value3).
    (recoveredBlock80Block89Value0) fractionComplete: (recoveredBlock80Block89Value4).
    recoveredBlock80Block89Value5 := recoveredBlock80Block89Arg1.
    recoveredBlock80Block89Value6 := (recoveredBlock80Block89Value5) convertToNewIntegerTypes.
    recoveredBlock80Block89Value6
].
    recoveredBlock80Value2 := (recoveredBlock80Value0) doWithIndex: (recoveredBlock80Value1).
    recoveredBlock80Value2
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := 'New Integer Types'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) execWithProgressDialog: (recoveredStack2) message: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) printReady.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) commitDBView: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock145Local1 recoveredBlock145Stack0 recoveredBlock145Stack1 recoveredBlock145Stack2 recoveredBlock145PC recoveredBlock145Step recoveredBlock145Done recoveredBlock145Result |
    recoveredBlock145Stack0 := self.
    recoveredBlock145PC := 152.
    recoveredBlock145Done := false.
    [recoveredBlock145Done not] whileTrue: [
        recoveredBlock145Step := recoveredBlock145PC.
        recoveredBlock145Step = 152 ifTrue: [
            recoveredBlock145Stack0 := (recoveredBlock145Stack0) dbAccess.
            recoveredBlock145PC := 154.
        ].
        recoveredBlock145Step = 154 ifTrue: [
            recoveredBlock145Stack1 := SGCodeContainerExternal.
            recoveredBlock145PC := 156.
        ].
        recoveredBlock145Step = 156 ifTrue: [
            recoveredBlock145Stack0 := (recoveredBlock145Stack0) readClassKeys: (recoveredBlock145Stack1).
            recoveredBlock145PC := 158.
        ].
        recoveredBlock145Step = 158 ifTrue: [
            recoveredBlock145Local1 := recoveredBlock145Stack0.
            recoveredBlock145PC := 159.
        ].
        recoveredBlock145Step = 159 ifTrue: [
            recoveredBlock145Stack0 := recoveredBlock145Local1.
            recoveredBlock145PC := 160.
        ].
        recoveredBlock145Step = 160 ifTrue: [
            recoveredBlock145Stack1 := [:block28000ff8Arg1 | 
    | block28000ff8Value0 block28000ff8Value1 block28000ff8Value2 block28000ff8Value3 block28000ff8Value4 block28000ff8Value5 |
    block28000ff8Value0 := block28000ff8Arg1.
    (block28000ff8Value0) updateApplicationTimeStamp: (0).
    block28000ff8Value1 := block28000ff8Arg1.
    block28000ff8Value2 := block28000ff8Arg1.
    block28000ff8Value3 := (block28000ff8Value2) applicationFlag.
    block28000ff8Value4 := (block28000ff8Value3) bitOr: (1).
    block28000ff8Value5 := (block28000ff8Value1) updateApplicationFlag: (block28000ff8Value4).
    block28000ff8Value5
].
            recoveredBlock145PC := 162.
        ].
        recoveredBlock145Step = 162 ifTrue: [
            recoveredBlock145PC := 182.
        ].
        recoveredBlock145Step = 182 ifTrue: [
            recoveredBlock145Stack0 := (recoveredBlock145Stack0) do: (recoveredBlock145Stack1).
            recoveredBlock145PC := 184.
        ].
        recoveredBlock145Step = 184 ifTrue: [
            recoveredBlock145Result := recoveredBlock145Stack0.
            recoveredBlock145Done := true.
        ].
    ].
    recoveredBlock145Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) execShortOperation: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x200034c4; bytecode file offset 0xcfb8"
!SGConvertVariablesToolbox methodsFor: 'recovered'!
convertWholeDatabase: recoveredArg1 conversionBlock: recoveredArg2 informationString: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) dbAccess.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) libraryKeys.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := [:block280013a0Arg1 | 
    | block280013a0Stack0 block280013a0Stack1 block280013a0Stack2 block280013a0Stack3 block280013a0PC block280013a0Step block280013a0Done block280013a0Result |
    block280013a0Stack0 := self.
    block280013a0PC := 4.
    block280013a0Done := false.
    [block280013a0Done not] whileTrue: [
        block280013a0Step := block280013a0PC.
        block280013a0Step = 4 ifTrue: [
            block280013a0Stack1 := block280013a0Arg1.
            block280013a0PC := 5.
        ].
        block280013a0Step = 5 ifTrue: [
            block280013a0Stack2 := [:block280013c4Arg1 | 
    nil
].
            block280013a0PC := 7.
        ].
        block280013a0Step = 7 ifTrue: [
            block280013a0PC := 12.
        ].
        block280013a0Step = 12 ifTrue: [
            block280013a0Stack1 := (block280013a0Stack1) getObjectIfUndefined: (block280013a0Stack2).
            block280013a0PC := 14.
        ].
        block280013a0Step = 14 ifTrue: [
            block280013a0Result := block280013a0Stack1.
            block280013a0Done := true.
        ].
    ].
    block280013a0Result
].
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) collect: (recoveredBlock6Stack1).
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := [:block280013e8Arg1 | 
    | block280013e8Value0 block280013e8Value1 |
    block280013e8Value0 := block280013e8Arg1.
    block280013e8Value1 := (block280013e8Value0) notNil.
    block280013e8Value1
].
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isEmpty.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 54] ifFalse: [recoveredBlock6PC := 56].
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack0 := OrderedCollection.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) new.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 66.
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block66Arg1 | 
    | recoveredBlock6Block66Stack0 recoveredBlock6Block66Stack1 recoveredBlock6Block66Stack2 recoveredBlock6Block66Stack3 recoveredBlock6Block66Stack4 recoveredBlock6Block66PC recoveredBlock6Block66Step recoveredBlock6Block66Done recoveredBlock6Block66Result |
    recoveredBlock6Block66Stack0 := nil.
    recoveredBlock6Block66PC := 72.
    recoveredBlock6Block66Done := false.
    [recoveredBlock6Block66Done not] whileTrue: [
        recoveredBlock6Block66Step := recoveredBlock6Block66PC.
        recoveredBlock6Block66Step = 72 ifTrue: [
            recoveredBlock6Block66Stack1 := recoveredLocal2.
            recoveredBlock6Block66PC := 75.
        ].
        recoveredBlock6Block66Step = 75 ifTrue: [
            recoveredBlock6Block66Stack2 := recoveredBlock6Block66Arg1.
            recoveredBlock6Block66PC := 76.
        ].
        recoveredBlock6Block66Step = 76 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) allNotFolderChildrenKeys.
            recoveredBlock6Block66PC := 78.
        ].
        recoveredBlock6Block66Step = 78 ifTrue: [
            (recoveredBlock6Block66Stack1) addAll: (recoveredBlock6Block66Stack2).
            recoveredBlock6Block66PC := 80.
        ].
        recoveredBlock6Block66Step = 80 ifTrue: [
            recoveredBlock6Block66Stack1 := recoveredLocal2.
            recoveredBlock6Block66PC := 83.
        ].
        recoveredBlock6Block66Step = 83 ifTrue: [
            recoveredBlock6Block66Stack2 := recoveredBlock6Block66Arg1.
            recoveredBlock6Block66PC := 84.
        ].
        recoveredBlock6Block66Step = 84 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) allFolderChildrenRecursive.
            recoveredBlock6Block66PC := 86.
        ].
        recoveredBlock6Block66Step = 86 ifTrue: [
            recoveredBlock6Block66Stack3 := [:block2800140cArg1 | 
    | block2800140cValue0 block2800140cValue1 |
    block2800140cValue0 := block2800140cArg1.
    block2800140cValue1 := (block2800140cValue0) asRBDBReference.
    block2800140cValue1
].
            recoveredBlock6Block66PC := 88.
        ].
        recoveredBlock6Block66Step = 88 ifTrue: [
            recoveredBlock6Block66PC := 96.
        ].
        recoveredBlock6Block66Step = 96 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) collect: (recoveredBlock6Block66Stack3).
            recoveredBlock6Block66PC := 98.
        ].
        recoveredBlock6Block66Step = 98 ifTrue: [
            (recoveredBlock6Block66Stack1) addAll: (recoveredBlock6Block66Stack2).
            recoveredBlock6Block66PC := 100.
        ].
        recoveredBlock6Block66Step = 100 ifTrue: [
            recoveredBlock6Block66Stack1 := recoveredLocal2.
            recoveredBlock6Block66PC := 103.
        ].
        recoveredBlock6Block66Step = 103 ifTrue: [
            recoveredBlock6Block66Stack2 := recoveredBlock6Block66Arg1.
            recoveredBlock6Block66PC := 104.
        ].
        recoveredBlock6Block66Step = 104 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) asRBDBReference.
            recoveredBlock6Block66PC := 106.
        ].
        recoveredBlock6Block66Step = 106 ifTrue: [
            recoveredBlock6Block66Stack1 := (recoveredBlock6Block66Stack1) add: (recoveredBlock6Block66Stack2).
            recoveredBlock6Block66PC := 108.
        ].
        recoveredBlock6Block66Step = 108 ifTrue: [
            recoveredBlock6Block66Result := recoveredBlock6Block66Stack1.
            recoveredBlock6Block66Done := true.
        ].
    ].
    recoveredBlock6Block66Result
].
            recoveredBlock6PC := 109.
        ].
        recoveredBlock6Step = 109 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    recoveredValue2 := SGMonitorStreamDummy.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) addText: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 |
    recoveredBlock132Value0 := recoveredLocal2.
    recoveredBlock132Value1 := [:recoveredBlock132Block141Arg1 :recoveredBlock132Block141Arg2 | 
    | recoveredBlock132Block141Local1 recoveredBlock132Block141Stack0 recoveredBlock132Block141Stack1 recoveredBlock132Block141Stack2 recoveredBlock132Block141Stack3 recoveredBlock132Block141Stack4 recoveredBlock132Block141PC recoveredBlock132Block141Step recoveredBlock132Block141Done recoveredBlock132Block141Result |
    recoveredBlock132Block141Stack0 := nil.
    recoveredBlock132Block141PC := 148.
    recoveredBlock132Block141Done := false.
    [recoveredBlock132Block141Done not] whileTrue: [
        recoveredBlock132Block141Step := recoveredBlock132Block141PC.
        recoveredBlock132Block141Step = 148 ifTrue: [
            recoveredBlock132Block141Stack1 := recoveredBlock132Arg1.
            recoveredBlock132Block141PC := 151.
        ].
        recoveredBlock132Block141Step = 151 ifTrue: [
            recoveredBlock132Block141Stack2 := recoveredBlock132Block141Arg2.
            recoveredBlock132Block141PC := 152.
        ].
        recoveredBlock132Block141Step = 152 ifTrue: [
            recoveredBlock132Block141Stack3 := recoveredLocal2.
            recoveredBlock132Block141PC := 155.
        ].
        recoveredBlock132Block141Step = 155 ifTrue: [
            recoveredBlock132Block141Stack3 := (recoveredBlock132Block141Stack3) size.
            recoveredBlock132Block141PC := 157.
        ].
        recoveredBlock132Block141Step = 157 ifTrue: [
            recoveredBlock132Block141Stack2 := (recoveredBlock132Block141Stack2) / (recoveredBlock132Block141Stack3).
            recoveredBlock132Block141PC := 159.
        ].
        recoveredBlock132Block141Step = 159 ifTrue: [
            (recoveredBlock132Block141Stack1) fractionComplete: (recoveredBlock132Block141Stack2).
            recoveredBlock132Block141PC := 161.
        ].
        recoveredBlock132Block141Step = 161 ifTrue: [
            recoveredBlock132Block141Stack1 := nil.
            recoveredBlock132Block141PC := 162.
        ].
        recoveredBlock132Block141Step = 162 ifTrue: [
            recoveredBlock132Block141Stack2 := recoveredBlock132Block141Arg1.
            recoveredBlock132Block141PC := 163.
        ].
        recoveredBlock132Block141Step = 163 ifTrue: [
            recoveredBlock132Block141Stack3 := [:block28001430Arg1 | 
    nil
].
            recoveredBlock132Block141PC := 165.
        ].
        recoveredBlock132Block141Step = 165 ifTrue: [
            recoveredBlock132Block141PC := 170.
        ].
        recoveredBlock132Block141Step = 170 ifTrue: [
            recoveredBlock132Block141Stack2 := (recoveredBlock132Block141Stack2) getObjectIfUndefined: (recoveredBlock132Block141Stack3).
            recoveredBlock132Block141PC := 172.
        ].
        recoveredBlock132Block141Step = 172 ifTrue: [
            recoveredBlock132Block141Stack3 := recoveredBlock132Block141Stack2.
            recoveredBlock132Block141PC := 173.
        ].
        recoveredBlock132Block141Step = 173 ifTrue: [
            recoveredBlock132Block141Local1 := recoveredBlock132Block141Stack3.
            recoveredBlock132Block141PC := 174.
        ].
        recoveredBlock132Block141Step = 174 ifTrue: [
            (recoveredBlock132Block141Stack2 == nil) ifTrue: [recoveredBlock132Block141PC := 188] ifFalse: [recoveredBlock132Block141PC := 178].
        ].
        recoveredBlock132Block141Step = 178 ifTrue: [
            recoveredBlock132Block141PC := 179.
        ].
        recoveredBlock132Block141Step = 179 ifTrue: [
            recoveredBlock132Block141Stack1 := recoveredArg2.
            recoveredBlock132Block141PC := 182.
        ].
        recoveredBlock132Block141Step = 182 ifTrue: [
            recoveredBlock132Block141Stack2 := recoveredBlock132Block141Local1.
            recoveredBlock132Block141PC := 183.
        ].
        recoveredBlock132Block141Step = 183 ifTrue: [
            recoveredBlock132Block141Stack3 := recoveredLocal1.
            recoveredBlock132Block141PC := 186.
        ].
        recoveredBlock132Block141Step = 186 ifTrue: [
            recoveredBlock132Block141Stack1 := (recoveredBlock132Block141Stack1) value: (recoveredBlock132Block141Stack2) value: (recoveredBlock132Block141Stack3).
            recoveredBlock132Block141PC := 188.
        ].
        recoveredBlock132Block141Step = 188 ifTrue: [
            recoveredBlock132Block141Result := recoveredBlock132Block141Stack1.
            recoveredBlock132Block141Done := true.
        ].
    ].
    recoveredBlock132Block141Result
].
    recoveredBlock132Value2 := (recoveredBlock132Value0) doWithIndex: (recoveredBlock132Value1).
    recoveredBlock132Value2
].
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (self) library.
    recoveredValue10 := (recoveredValue9) location.
    recoveredValue11 := ('Database ') , (recoveredValue10).
    (recoveredValue6) execWithProgressDialog: (recoveredValue7) message: (recoveredValue8) showProgress: (true) title: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue12) printReady.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) uiController.
    recoveredValue15 := (recoveredValue14) mainController.
    recoveredValue16 := recoveredArg1.
    (recoveredValue15) commitDBView: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := [
    | recoveredBlock228Local1 recoveredBlock228Stack0 recoveredBlock228Stack1 recoveredBlock228Stack2 recoveredBlock228PC recoveredBlock228Step recoveredBlock228Done recoveredBlock228Result |
    recoveredBlock228Stack0 := self.
    recoveredBlock228PC := 234.
    recoveredBlock228Done := false.
    [recoveredBlock228Done not] whileTrue: [
        recoveredBlock228Step := recoveredBlock228PC.
        recoveredBlock228Step = 234 ifTrue: [
            recoveredBlock228Stack0 := (recoveredBlock228Stack0) dbAccess.
            recoveredBlock228PC := 235.
        ].
        recoveredBlock228Step = 235 ifTrue: [
            recoveredBlock228Stack1 := SGCodeContainerExternal.
            recoveredBlock228PC := 237.
        ].
        recoveredBlock228Step = 237 ifTrue: [
            recoveredBlock228Stack0 := (recoveredBlock228Stack0) readClassKeys: (recoveredBlock228Stack1).
            recoveredBlock228PC := 239.
        ].
        recoveredBlock228Step = 239 ifTrue: [
            recoveredBlock228Local1 := recoveredBlock228Stack0.
            recoveredBlock228PC := 240.
        ].
        recoveredBlock228Step = 240 ifTrue: [
            recoveredBlock228Stack0 := recoveredBlock228Local1.
            recoveredBlock228PC := 241.
        ].
        recoveredBlock228Step = 241 ifTrue: [
            recoveredBlock228Stack1 := [:block28001454Arg1 | 
    | block28001454Value0 block28001454Value1 block28001454Value2 block28001454Value3 block28001454Value4 block28001454Value5 |
    block28001454Value0 := block28001454Arg1.
    (block28001454Value0) updateApplicationTimeStamp: (0).
    block28001454Value1 := block28001454Arg1.
    block28001454Value2 := block28001454Arg1.
    block28001454Value3 := (block28001454Value2) applicationFlag.
    block28001454Value4 := (block28001454Value3) bitOr: (1).
    block28001454Value5 := (block28001454Value1) updateApplicationFlag: (block28001454Value4).
    block28001454Value5
].
            recoveredBlock228PC := 243.
        ].
        recoveredBlock228Step = 243 ifTrue: [
            recoveredBlock228PC := 262.
        ].
        recoveredBlock228Step = 262 ifTrue: [
            recoveredBlock228Stack0 := (recoveredBlock228Stack0) do: (recoveredBlock228Stack1).
            recoveredBlock228PC := 264.
        ].
        recoveredBlock228Step = 264 ifTrue: [
            recoveredBlock228Result := recoveredBlock228Stack0.
            recoveredBlock228Done := true.
        ].
    ].
    recoveredBlock228Result
].
    (recoveredValue17) execShortOperation: (recoveredValue18).
    ^self
! !

