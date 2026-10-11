"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200160a0; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyGenerateFloatLimiters
    ^'generateFloatLimiters'
! !

"ASDBase.ic method 0x20017564; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyOptimizedMulDiv
    ^'optimizeMulDiv'
! !

"ASDBase.ic method 0x200189c8; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyOptimizeMul
    ^'optimizeMul'
! !

"ASDBase.ic method 0x2001a318; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyShiftForMul
    ^'shiftForMul'
! !

"ASDBase.ic method 0x2001bb0c; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyGenerateLimiters
    ^'generateLimiters'
! !

"ASDBase.ic method 0x2001bbfc; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyTempVarsAlways32Bit
    ^'tempVarsAlways32Bit'
! !

"ASDBase.ic method 0x2001be48; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyTempFloatsAlways32Bit
    ^'tempFloatsAlways32Bit'
! !

"ASDBase.ic method 0x2001cd84; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyUseNewIntegerTypes
    ^'useNewIntegerTypes'
! !

"ASDBase.ic method 0x2001d540; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyResultOnDivisionByZero
    ^'resultOnDivisionByZero'
! !

"ASDBase.ic method 0x2001d618; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyShiftForLiterals
    ^'shiftForLiterals'
! !

"ASDBase.ic method 0x2001df90; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyRepresentableBits
    ^'representableBits'
! !

"ASDBase.ic method 0x2001f784; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyShiftForDiv
    ^'shiftForDiv'
! !

"ASDBase.ic method 0x2001fba4; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
resultOnDivsionUserDefinedString
    ^'user defined'
! !

"ASDBase.ic method 0x20021350; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyGenerateRound
    ^'generateRound'
! !

"ASDBase.ic method 0x20021be4; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyAllowDouble
    ^'allowDouble'
! !

"ASDBase.ic method 0x200230b4; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyRestrictedServiceUsage
    ^'restrictedServiceUsage'
! !

"ASDBase.ic method 0x20023288; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
resultOnDivisionNumberString
    ^'numerator'
! !

"ASDBase.ic method 0x20023318; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyDivShiftNecessaryOnly
    ^'divShiftNecessaryOnly'
! !

"ASDBase.ic method 0x20025520; bytecode file offset 0x92209c"
!SGIaSettings class methodsFor: 'recovered'!
keyArithmeticServiceSet
    ^'arithmeticServiceSet'
! !

"ASDBase.ic method 0x200263bc; bytecode file offset 0x923928"
!SGIaSettings class methodsFor: 'recovered'!
keyRepresentableContinuousBits
    ^'representableContinuousBits'
! !

"ASDBase.ic method 0x2003a5b0; bytecode file offset 0x938608"
!SGIaSettings class methodsFor: 'recovered'!
optionLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) optionLabelForKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20046dbc; bytecode file offset 0x9451f8"
!SGIaSettings class methodsFor: 'recovered'!
optionGroupIntegerArithmetic
    | recoveredValue0 |
    recoveredValue0 := (self) optionSubGroupCodeGeneration: ('Integer Arithmetic').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048be8; bytecode file offset 0x945728"
!SGIaSettings class methodsFor: 'recovered'!
resetOptionDeclarations
    OptionsDeclaration := nil.
    ^self
! !

"ASDBase.ic method 0x2004a74c; bytecode file offset 0x947128"
!SGIaSettings class methodsFor: 'recovered'!
noArithmeticServiceSetString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyArithmeticServiceSet.
    recoveredValue1 := (self) optionDefaultForKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b4694; bytecode file offset 0x9b0f88"
!SGIaSettings class methodsFor: 'recovered'!
codeOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) boolOptions.
    recoveredValue1 := (self) intOptions.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (self) stringOptions.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200cc564; bytecode file offset 0x9c8f90"
!SGIaSettings class methodsFor: 'recovered'!
listResultOnDivisionByZero
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) resultOnDivisionNumberString.
    recoveredValue2 := (self) resultOnDivsionUserDefinedString.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d78e8; bytecode file offset 0x9d41a0"
!SGIaSettings class methodsFor: 'recovered'!
visibleBlockForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200efc18; bytecode file offset 0x9ec4d4"
!SGIaSettings class methodsFor: 'recovered'!
repContinuousBitsValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (32) with: (64).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f75fc; bytecode file offset 0x9f4e38"
!SGIaSettings class methodsFor: 'recovered'!
listRepresentableContinuousBits
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) repContinuousBitsValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c46f8Arg1 | 
    | block280c46f8Value0 block280c46f8Value1 |
    block280c46f8Value0 := block280c46f8Arg1.
    block280c46f8Value1 := (block280c46f8Value0) printString.
    block280c46f8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8214; bytecode file offset 0x9f4e38"
!SGIaSettings class methodsFor: 'recovered'!
listRepresentableBits
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) repBitsValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c591cArg1 | 
    | block280c591cValue0 block280c591cValue1 |
    block280c591cValue0 := block280c591cArg1.
    block280c591cValue1 := (block280c591cValue0) printString.
    block280c591cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20104fd4; bytecode file offset 0xa01890"
!SGIaSettings class methodsFor: 'recovered'!
repBitsValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (8) with: (16) with: (32).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20117564; bytecode file offset 0xa13e2c"
!SGIaSettings class methodsFor: 'recovered'!
intOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rl') == ('Call_62389').
    recoveredValue1 := Array.
    recoveredValue2 := (self) keyRepresentableBits.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015c400; bytecode file offset 0xa58ccc"
!SGIaSettings class methodsFor: 'recovered'!
stringOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) keyArithmeticServiceSet.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) keyResultOnDivisionByZero.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := (recoveredValue1) asArray.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20167508; bytecode file offset 0xa63e94"
!SGIaSettings class methodsFor: 'recovered'!
xmlAttributeNameForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce64cArg1 | 
    | block280ce64cValue0 block280ce64cValue1 |
    block280ce64cValue0 := block280ce64cArg1.
    block280ce64cValue1 := (block280ce64cValue0) attributeName.
    block280ce64cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016755c; bytecode file offset 0xa63e94"
!SGIaSettings class methodsFor: 'recovered'!
optionLabelForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce6b8Arg1 | 
    | block280ce6b8Value0 block280ce6b8Value1 |
    block280ce6b8Value0 := block280ce6b8Arg1.
    block280ce6b8Value1 := (block280ce6b8Value0) label.
    block280ce6b8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201675b0; bytecode file offset 0xa63e94"
!SGIaSettings class methodsFor: 'recovered'!
xmlCategoryForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce724Arg1 | 
    | block280ce724Value0 block280ce724Value1 |
    block280ce724Value0 := block280ce724Arg1.
    block280ce724Value1 := (block280ce724Value0) xmlCategory.
    block280ce724Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186500; bytecode file offset 0xa82f2c"
!SGIaSettings class methodsFor: 'recovered'!
optionStringCollectionForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d06c8Arg1 | 
    | block280d06c8Value0 block280d06c8Value1 block280d06c8Value2 |
    block280d06c8Value0 := block280d06c8Arg1.
    block280d06c8Value1 := (block280d06c8Value0) optionClass.
    block280d06c8Value2 := (block280d06c8Value1) stringCollection.
    block280d06c8Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186560; bytecode file offset 0xa82f2c"
!SGIaSettings class methodsFor: 'recovered'!
optionMinForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d0734Arg1 | 
    | block280d0734Value0 block280d0734Value1 block280d0734Value2 |
    block280d0734Value0 := block280d0734Arg1.
    block280d0734Value1 := (block280d0734Value0) optionClass.
    block280d0734Value2 := (block280d0734Value1) min.
    block280d0734Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186580; bytecode file offset 0xa82f2c"
!SGIaSettings class methodsFor: 'recovered'!
optionGroupForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d0758Arg1 | 
    | block280d0758Value0 block280d0758Value1 block280d0758Value2 |
    block280d0758Value0 := block280d0758Arg1.
    block280d0758Value1 := (block280d0758Value0) optionClass.
    block280d0758Value2 := (block280d0758Value1) group.
    block280d0758Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186620; bytecode file offset 0xa82f2c"
!SGIaSettings class methodsFor: 'recovered'!
optionMaxForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d080cArg1 | 
    | block280d080cValue0 block280d080cValue1 block280d080cValue2 |
    block280d080cValue0 := block280d080cArg1.
    block280d080cValue1 := (block280d080cValue0) optionClass.
    block280d080cValue2 := (block280d080cValue1) max.
    block280d080cValue2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e60d0; bytecode file offset 0xae29a0"
!SGIaSettings class methodsFor: 'recovered'!
arithmeticServicePossibleForProject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63786'.
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
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdGeneralOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsImplementationServiceSet.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithmeticServiceSetsForProject: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237cb0; bytecode file offset 0xb34588"
!SGIaSettings class methodsFor: 'recovered'!
optionValueCollectionForKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) keyRepresentableBits.
    recoveredValue5 := (self) repBitsValues.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) keyRepresentableContinuousBits.
    recoveredValue8 := (self) repContinuousBitsValues.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [].
    recoveredValue12 := (recoveredValue9) at: (recoveredValue10) ifAbsent: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2023ff04; bytecode file offset 0xb3c840"
!SGIaSettings class methodsFor: 'recovered'!
optionDescriptionForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optionsDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) optionClass.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) description.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isEmpty.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) label.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2023ff70; bytecode file offset 0xb3c840"
!SGIaSettings class methodsFor: 'recovered'!
optionToolTipForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optionsDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) optionClass.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) toolTip.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isEmpty.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) label.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025ddfc; bytecode file offset 0xb5a6c4"
!SGIaSettings class methodsFor: 'recovered'!
openArithmeticServiceEditorForProject: recoveredArg1 selectedSet: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) noArithmeticServiceSetString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetLabel.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) openArithServiceEditor: (recoveredStack2) selectedSet: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202dc5c0; bytecode file offset 0xbd8e9c"
!SGIaSettings class methodsFor: 'recovered'!
xmlConversionBlockForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyRepresentableBits.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := [:block280e679cArg1 | 
    | block280e679cValue0 block280e679cValue1 |
    block280e679cValue0 := block280e679cArg1.
    block280e679cValue1 := (block280e679cValue0) asInteger.
    block280e679cValue1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyRepresentableContinuousBits.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := [:block280e67c0Arg1 | 
    | block280e67c0Value0 block280e67c0Value1 |
    block280e67c0Value0 := block280e67c0Arg1.
    block280e67c0Value1 := (block280e67c0Value0) asInteger.
    block280e67c0Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203013ec; bytecode file offset 0xbfdcb4"
!SGIaSettings class methodsFor: 'recovered'!
openArithmeticServiceEditorForTarget: recoveredArg1 selectedSet: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) noArithmeticServiceSetString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetLabel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) openArithServiceEditor: (recoveredStack2) selectedSet: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034a08c; bytecode file offset 0xc46978"
!SGIaSettings class methodsFor: 'recovered'!
boolOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := ('Rl') == ('Call_62389').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) keyAllowDouble.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) keyShiftForDiv.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) keyShiftForMul.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (self) keyGenerateRound.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := (self) keyGenerateFloatLimiters.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := (self) keyTempVarsAlways32Bit.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := (self) keyShiftForLiterals.
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := (self) keyUseNewIntegerTypes.
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue2) asArray.
    ^recoveredValue19
! !

"ASDBase.ic method 0x2037c838; bytecode file offset 0xc79128"
!SGIaSettings class methodsFor: 'recovered'!
optionsDeclaration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OptionsDeclaration.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := LookupTable.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := 50.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new: (recoveredBlock6Stack2).
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            OptionsDeclaration := recoveredBlock6Stack1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) optionGroupIntegerArithmetic.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := ASDXMLProjectOptionsDeclaration.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) instance.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) options.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block29Arg1 | 
    | recoveredBlock6Block29Value0 recoveredBlock6Block29Value1 recoveredBlock6Block29Value2 recoveredBlock6Block29Value3 recoveredBlock6Block29Value4 |
    recoveredBlock6Block29Value0 := recoveredBlock6Block29Arg1.
    recoveredBlock6Block29Value1 := (recoveredBlock6Block29Value0) optionClass.
    recoveredBlock6Block29Value2 := (recoveredBlock6Block29Value1) group.
    recoveredBlock6Block29Value3 := recoveredBlock6Local1.
    recoveredBlock6Block29Value4 := (recoveredBlock6Block29Value2) = (recoveredBlock6Block29Value3).
    recoveredBlock6Block29Value4
].
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack1 := [:block280f2550Arg1 | 
    | block280f2550Value0 block280f2550Value1 block280f2550Value2 block280f2550Value3 block280f2550Value4 |
    block280f2550Value0 := OptionsDeclaration.
    block280f2550Value1 := block280f2550Arg1.
    block280f2550Value2 := (block280f2550Value1) attributeName.
    block280f2550Value3 := block280f2550Arg1.
    block280f2550Value4 := (block280f2550Value0) at: (block280f2550Value2) put: (block280f2550Value3).
    block280f2550Value4
].
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := OptionsDeclaration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203ea038; bytecode file offset 0xce6914"
!SGIaSettings class methodsFor: 'recovered'!
optionDefaultForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optionsDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) keyTempFloatsAlways32Bit.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) equals: (recoveredBlock8Stack2).
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 24] ifFalse: [recoveredBlock8PC := 28].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := false.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) optionClass.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) default.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) keyRepresentableBits.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 62] ifFalse: [recoveredBlock30PC := 52].
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) keyRepresentableContinuousBits.
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 62] ifFalse: [recoveredBlock30PC := 68].
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) asInteger.
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) keyRestrictedServiceUsage.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 78] ifFalse: [recoveredBlock30PC := 84].
        ].
        recoveredBlock30Step = 78 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local1.
            recoveredBlock30PC := 79.
        ].
        recoveredBlock30Step = 79 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) not.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local1.
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2040831c; bytecode file offset 0xd04c08"
!SGIaSettings class methodsFor: 'recovered'!
arithmeticServiceSetsForTarget: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) noArithmeticServiceSetString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceIniFile.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceIniFile.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceIniFile.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) sectionNames.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := nil.
            recoveredBlock67PC := 75.
        ].
        recoveredBlock67Step = 75 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) notEmpty.
            recoveredBlock67PC := 78.
        ].
        recoveredBlock67Step = 78 ifTrue: [
            (recoveredBlock67Stack2) ifTrue: [recoveredBlock67PC := 82] ifFalse: [recoveredBlock67PC := 89].
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67PC := 83.
        ].
        recoveredBlock67Step = 83 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal1.
            recoveredBlock67PC := 86.
        ].
        recoveredBlock67Step = 86 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 87.
        ].
        recoveredBlock67Step = 87 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) add: (recoveredBlock67Stack2).
            recoveredBlock67PC := 89.
        ].
        recoveredBlock67Step = 89 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack1.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20466a04; bytecode file offset 0xd632fc"
!SGIaSettings class methodsFor: 'recovered'!
arithmeticServiceSetsForProject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) noArithmeticServiceSetString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Call_62959'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceIniFile.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceIniFile.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceIniFile.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) sectionNames.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 99.
        ].
        recoveredBlock91Step = 99 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Arg1.
            recoveredBlock91PC := 100.
        ].
        recoveredBlock91Step = 100 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) notEmpty.
            recoveredBlock91PC := 102.
        ].
        recoveredBlock91Step = 102 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 106] ifFalse: [recoveredBlock91PC := 113].
        ].
        recoveredBlock91Step = 106 ifTrue: [
            recoveredBlock91PC := 107.
        ].
        recoveredBlock91Step = 107 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal1.
            recoveredBlock91PC := 110.
        ].
        recoveredBlock91Step = 110 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Arg1.
            recoveredBlock91PC := 111.
        ].
        recoveredBlock91Step = 111 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) add: (recoveredBlock91Stack2).
            recoveredBlock91PC := 113.
        ].
        recoveredBlock91Step = 113 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

