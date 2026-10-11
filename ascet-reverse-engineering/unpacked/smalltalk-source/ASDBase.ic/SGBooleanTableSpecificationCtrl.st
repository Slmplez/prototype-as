"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002868; bytecode file offset 0x8ffcfc"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
startObserving
    ^self
! !

"ASDBase.ic method 0x2001de88; bytecode file offset 0x92209c"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
defaultMethodPrefix
    ^'return '
! !

"ASDBase.ic method 0x20033d54; bytecode file offset 0x934580"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
booleanTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) booleanTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006144c; bytecode file offset 0x95e838"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
defaultMethodCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultMethodPrefix.
    recoveredValue1 := (recoveredValue0) , ('false').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20098cb4; bytecode file offset 0x995850"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
booleanTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) booleanTable: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f540; bytecode file offset 0x99c9e0"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
deleteAllVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) allVariables.
    (self) deleteElements: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0a00; bytecode file offset 0x99d3ac"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
createBooleanTable
    (self) createDefaultBT.
    (self) initBooleanTable.
    ^self
! !

"ASDBase.ic method 0x200a1074; bytecode file offset 0x99db8c"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
initSpecificationName
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) specificationName: ('BooleanTable').
    ^self
! !

"ASDBase.ic method 0x200e1b88; bytecode file offset 0x9de4fc"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
save
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_81159').
    (self) createMethodCode.
    ^self
! !

"ASDBase.ic method 0x2012702c; bytecode file offset 0xa238ec"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
addVariableNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) createAliasBoolean.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (self) renameElement: (recoveredValue1) to: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) enableSetAccessMethod: (true).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20140200; bytecode file offset 0xa3caf4"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
addAllMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) booleanTable.
    recoveredValue1 := (recoveredValue0) outputNames.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) addMethodNamed: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20140218; bytecode file offset 0xa3caf4"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
addAllVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) booleanTable.
    recoveredValue1 := (recoveredValue0) inputNames.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) addVariableNamed: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014b35c; bytecode file offset 0xa47c18"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
renameVariable: recoveredArg1 to: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) variableForName: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) renameElement: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201893ec; bytecode file offset 0xa85cac"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
createDefaultBT
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := BooleanTable.
    recoveredValue1 := (recoveredValue0) inputs: (2) outputs: (1) combinations: (4) startValue: (0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) booleanTable: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20196b08; bytecode file offset 0xa9351c"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
variableForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allElements.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) elementName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20196bf8; bytecode file offset 0xa9351c"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
methodForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) methodName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a290c; bytecode file offset 0xa9f1d4"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
initBooleanTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    (self) initSpecificationName.
    (self) initVariables.
    recoveredBlock5Value0 := (self) initMethods.
    recoveredBlock5Value0
].
    (recoveredValue0) suspendObserving: (recoveredValue1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201b0c78; bytecode file offset 0xaad578"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
updateVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    (self) deleteAllVariables.
    (self) addAllVariables.
    recoveredBlock5Value0 := (self) item.
    recoveredBlock5Value1 := (recoveredBlock5Value0) userModified.
    recoveredBlock5Value1
].
    (recoveredValue0) suspendObserving: (recoveredValue1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201b0c94; bytecode file offset 0xaad578"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
initMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    (self) deleteAllMethods.
    (self) addAllMethods.
    recoveredBlock5Value0 := (self) item.
    recoveredBlock5Value1 := (recoveredBlock5Value0) userModified.
    recoveredBlock5Value1
].
    (recoveredValue0) suspendObserving: (recoveredValue1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201b0cb0; bytecode file offset 0xaad578"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
initVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    (self) deleteAllVariables.
    (self) addAllVariables.
    recoveredBlock5Value0 := (self) item.
    recoveredBlock5Value1 := (recoveredBlock5Value0) userModified.
    recoveredBlock5Value1
].
    (recoveredValue0) suspendObserving: (recoveredValue1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201b0ce8; bytecode file offset 0xaad5b4"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
deleteAllMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) deleteMethodNoQuery: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) item.
    recoveredValue3 := (recoveredValue2) methodElements.
    (self) deleteElements: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201bd4e4; bytecode file offset 0xab9db8"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
addMethodNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createAliasMethod: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGBoolean.
    recoveredValue4 := (recoveredValue3) createDefault.
    (recoveredValue2) createReturnTemplate: (recoveredValue4).
    recoveredValue5 := (self) defaultMethodCode.
    recoveredValue6 := (recoveredValue5) , (';').
    recoveredValue7 := recoveredLocal1.
    (self) saveMethodString: (recoveredValue6) toMethod: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202192c4; bytecode file offset 0xb15b88"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
createMethodCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getMatrixFormula: (recoveredBlock5Stack3).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) saveMethodString: (recoveredBlock5Stack2) toMethod: (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20293220; bytecode file offset 0xb8faf4"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
getMatrixFormula: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) booleanTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaForOutputNamed: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMethodCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ';'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMethodPrefix.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ';'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20296d14; bytecode file offset 0xb935fc"
!SGBooleanTableSpecificationCtrl methodsFor: 'recovered'!
windowCloseRequest
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) booleanTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkMatrixLogic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Your table has bad entries. Continue closing anyway?'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'CloseBooleanTable'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

