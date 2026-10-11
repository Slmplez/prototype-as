"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200138cc; bytecode file offset 0x912098"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
mdfFormulaClass
    | recoveredValue0 |
    recoveredValue0 := MDFStringTableFormula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e29c; bytecode file offset 0x92209c"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
asap2CompuMethodType
    ^'TAB_VERB_RANGE'
! !

"ASDBase.ic method 0x20074820; bytecode file offset 0x9710d4"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
mdfFormulaId
    ^12
! !

"ASDBase.ic method 0x20159ae0; bytecode file offset 0xa563ac"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
parArray
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super parArray.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := Array.
    recoveredValue2 := (self) defaultValue.
    recoveredValue3 := (recoveredValue1) with: (nil) with: (recoveredValue2).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201de7a0; bytecode file offset 0xadb094"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
noFormulaAccessor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super asIntegerStringAccessor.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) valArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d61c4Arg1 | 
    | block280d61c4Value0 block280d61c4Value1 |
    block280d61c4Value0 := block280d61c4Arg1.
    block280d61c4Value1 := (block280d61c4Value0) left.
    block280d61c4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) valArray: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201de7c4; bytecode file offset 0xadb094"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
asIntegerStringAccessor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super asIntegerStringAccessor.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) valArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d61e8Arg1 | 
    | block280d61e8Value0 block280d61e8Value1 |
    block280d61e8Value0 := block280d61e8Arg1.
    block280d61e8Value1 := (block280d61e8Value0) left.
    block280d61e8Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) valArray: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202298f0; bytecode file offset 0xb261b8"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) valArray.
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
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) contains: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) phyArray.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    recoveredValue2 := defaultValue.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20251458; bytecode file offset 0xb4dd30"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
createMDFFormula
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) parArray.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) mdfFormulaClass.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) / (2).
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredValue6 := (recoveredValue1) createDefault: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) mdfFormulaId.
    (recoveredValue7) formulaId: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) parameter: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue13) / (2).
    (recoveredValue9) formulaNPar: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    ^recoveredValue15
! !

"ASDBase.ic method 0x203a3e6c; bytecode file offset 0xca0738"
!DBVerbalRangeTableFormulaItem methodsFor: 'recovered'!
calculateInvers: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := dbItem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) convert: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := phyArray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := dbItem.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) convert: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := dbItem.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := valArray.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := dbItem.
    recoveredBlock50Value1 := recoveredArg1.
    recoveredBlock50Value2 := (recoveredBlock50Value0) convert: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := [:block280f4b24Arg1 | 
    | block280f4b24Value0 block280f4b24Value1 |
    block280f4b24Value0 := block280f4b24Arg1.
    block280f4b24Value1 := (block280f4b24Value0) left.
    block280f4b24Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4) ifPresent: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) convert: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

