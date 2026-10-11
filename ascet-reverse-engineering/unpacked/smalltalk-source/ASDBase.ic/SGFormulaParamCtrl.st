"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200067f4; bytecode file offset 0x908be4"
!SGFormulaParamCtrl methodsFor: 'recovered'!
getItems
    | recoveredValue0 |
    recoveredValue0 := (self) identifiers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008b1c; bytecode file offset 0x908be4"
!SGFormulaParamCtrl methodsFor: 'recovered'!
getFormula
    | recoveredValue0 |
    recoveredValue0 := (self) formula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20051038; bytecode file offset 0x94f0e0"
!SGFormulaParamCtrl methodsFor: 'recovered'!
getParameterName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) formulaObject.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := (recoveredValue1) label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200603f4; bytecode file offset 0x95ccc0"
!SGFormulaParamCtrl methodsFor: 'recovered'!
writeInfoToDataModel
    | recoveredValue0 |
    (self) writeIdentifiersToDataModel.
    recoveredValue0 := (self) writeFormulaToDataModel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065974; bytecode file offset 0x963428"
!SGFormulaParamCtrl methodsFor: 'recovered'!
formulaObject
    | recoveredValue0 |
    recoveredValue0 := formulaObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067774; bytecode file offset 0x9646f8"
!SGFormulaParamCtrl methodsFor: 'recovered'!
formula
    | recoveredValue0 |
    recoveredValue0 := formula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200686bc; bytecode file offset 0x965b90"
!SGFormulaParamCtrl methodsFor: 'recovered'!
identifiers
    | recoveredValue0 |
    recoveredValue0 := identifiers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097754; bytecode file offset 0x995850"
!SGFormulaParamCtrl methodsFor: 'recovered'!
addIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) identifiers.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bd284; bytecode file offset 0x9b9b80"
!SGFormulaParamCtrl methodsFor: 'recovered'!
removeIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) identifiers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeAll: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bda74; bytecode file offset 0x9bb178"
!SGFormulaParamCtrl methodsFor: 'recovered'!
formulaObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formulaObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf4d0; bytecode file offset 0x9bc0b4"
!SGFormulaParamCtrl methodsFor: 'recovered'!
formula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formula := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bff74; bytecode file offset 0x9bd228"
!SGFormulaParamCtrl methodsFor: 'recovered'!
identifiers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifiers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013797c; bytecode file offset 0xa34244"
!SGFormulaParamCtrl methodsFor: 'recovered'!
deleteUnusedIdentifiers
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) eliminateIdentifiers.
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
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageText.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20143b4c; bytecode file offset 0xa4040c"
!SGFormulaParamCtrl methodsFor: 'recovered'!
updateIdentifiersFromList: recoveredArg1
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
            recoveredStack2 := [:block280cc228Arg1 :block280cc228Arg2 | 
    | block280cc228Value0 block280cc228Value1 block280cc228Value2 |
    block280cc228Value0 := block280cc228Arg1.
    block280cc228Value1 := block280cc228Arg2.
    block280cc228Value2 := (block280cc228Value0) < (block280cc228Value1).
    block280cc228Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) identifiers: (recoveredStack1).
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

"ASDBase.ic method 0x2015f0a4; bytecode file offset 0xa5b970"
!SGFormulaParamCtrl methodsFor: 'recovered'!
updateIdentifiers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulaObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifiers.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280cdd70Arg1 | 
    | block280cdd70Value0 block280cdd70Value1 |
    block280cdd70Value0 := block280cdd70Arg1.
    block280cdd70Value1 := (block280cdd70Value0) identifier.
    block280cdd70Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateIdentifiersFromList: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210564; bytecode file offset 0xb0ce20"
!SGFormulaParamCtrl methodsFor: 'recovered'!
checkIdentifier: recoveredArg1 oldValue: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) = (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025b6e4; bytecode file offset 0xb57fb4"
!SGFormulaParamCtrl methodsFor: 'recovered'!
checkOpOrFunction: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFuncKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) formulaObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getFuncValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) formulaObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUnaryOpsKeys.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulaObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBinaryOpsKeys.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b22b8; bytecode file offset 0xbaeb84"
!SGFormulaParamCtrl methodsFor: 'recovered'!
writeFormulaToDataModel
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateEsFormula.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) calculateEsFormula.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202bab28; bytecode file offset 0xbb73fc"
!SGFormulaParamCtrl methodsFor: 'recovered'!
forEachTokenIn: recoveredArg1 excludeList: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDDepParamFormulaScanner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ReadStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f74dc; bytecode file offset 0xbf3db4"
!SGFormulaParamCtrl methodsFor: 'recovered'!
getFunctions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFuncKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280e8b9cArg1 | 
    | block280e8b9cStack0 block280e8b9cStack1 block280e8b9cStack2 block280e8b9cStack3 block280e8b9cStack4 block280e8b9cPC block280e8b9cStep block280e8b9cDone block280e8b9cResult |
    block280e8b9cStack0 := self.
    block280e8b9cPC := 4.
    block280e8b9cDone := false.
    [block280e8b9cDone not] whileTrue: [
        block280e8b9cStep := block280e8b9cPC.
        block280e8b9cStep = 4 ifTrue: [
            block280e8b9cStack1 := false.
            block280e8b9cPC := 5.
        ].
        block280e8b9cStep = 5 ifTrue: [
            block280e8b9cStack2 := block280e8b9cArg1.
            block280e8b9cPC := 6.
        ].
        block280e8b9cStep = 6 ifTrue: [
            block280e8b9cStack3 := 'asin'.
            block280e8b9cPC := 8.
        ].
        block280e8b9cStep = 8 ifTrue: [
            block280e8b9cStack2 := (block280e8b9cStack2) ~= (block280e8b9cStack3).
            block280e8b9cPC := 9.
        ].
        block280e8b9cStep = 9 ifTrue: [
            (block280e8b9cStack2) ifTrue: [block280e8b9cPC := 12] ifFalse: [block280e8b9cPC := 37].
        ].
        block280e8b9cStep = 12 ifTrue: [
            block280e8b9cPC := 13.
        ].
        block280e8b9cStep = 13 ifTrue: [
            block280e8b9cStack1 := false.
            block280e8b9cPC := 14.
        ].
        block280e8b9cStep = 14 ifTrue: [
            block280e8b9cStack2 := block280e8b9cArg1.
            block280e8b9cPC := 15.
        ].
        block280e8b9cStep = 15 ifTrue: [
            block280e8b9cStack3 := 'acos'.
            block280e8b9cPC := 17.
        ].
        block280e8b9cStep = 17 ifTrue: [
            block280e8b9cStack2 := (block280e8b9cStack2) ~= (block280e8b9cStack3).
            block280e8b9cPC := 18.
        ].
        block280e8b9cStep = 18 ifTrue: [
            (block280e8b9cStack2) ifTrue: [block280e8b9cPC := 22] ifFalse: [block280e8b9cPC := 37].
        ].
        block280e8b9cStep = 22 ifTrue: [
            block280e8b9cPC := 23.
        ].
        block280e8b9cStep = 23 ifTrue: [
            block280e8b9cStack1 := false.
            block280e8b9cPC := 24.
        ].
        block280e8b9cStep = 24 ifTrue: [
            block280e8b9cStack2 := block280e8b9cArg1.
            block280e8b9cPC := 25.
        ].
        block280e8b9cStep = 25 ifTrue: [
            block280e8b9cStack3 := 'atan'.
            block280e8b9cPC := 27.
        ].
        block280e8b9cStep = 27 ifTrue: [
            block280e8b9cStack2 := (block280e8b9cStack2) ~= (block280e8b9cStack3).
            block280e8b9cPC := 28.
        ].
        block280e8b9cStep = 28 ifTrue: [
            (block280e8b9cStack2) ifTrue: [block280e8b9cPC := 32] ifFalse: [block280e8b9cPC := 37].
        ].
        block280e8b9cStep = 32 ifTrue: [
            block280e8b9cPC := 33.
        ].
        block280e8b9cStep = 33 ifTrue: [
            block280e8b9cStack1 := block280e8b9cArg1.
            block280e8b9cPC := 34.
        ].
        block280e8b9cStep = 34 ifTrue: [
            block280e8b9cStack2 := 'log10'.
            block280e8b9cPC := 36.
        ].
        block280e8b9cStep = 36 ifTrue: [
            block280e8b9cStack1 := (block280e8b9cStack1) ~= (block280e8b9cStack2).
            block280e8b9cPC := 37.
        ].
        block280e8b9cStep = 37 ifTrue: [
            block280e8b9cResult := block280e8b9cStack1.
            block280e8b9cDone := true.
        ].
    ].
    block280e8b9cResult
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034920c; bytecode file offset 0xc45ae0"
!SGFormulaParamCtrl methodsFor: 'recovered'!
getIdentifiersFromFormula: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) getFunctions.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getFunctions.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isIdentifier.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 32] ifFalse: [recoveredBlock20PC := 55].
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal3.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) value.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) includes: (recoveredBlock20Stack3).
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 55] ifFalse: [recoveredBlock20PC := 46].
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) value.
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (self) forEachTokenIn: (recoveredValue3) excludeList: (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20354d30; bytecode file offset 0xc5161c"
!SGFormulaParamCtrl methodsFor: 'recovered'!
getOperators
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposite.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCompositeOpsKeys.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUnaryOpsKeys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) formulaObject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBinaryOpsKeys.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulaObject.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) formulaObject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulaObject.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBracket.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c75d0; bytecode file offset 0xcc3eb0"
!SGFormulaParamCtrl methodsFor: 'recovered'!
replaceIdentifiersIn: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg2.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) value.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack4 := [
    | recoveredBlock17Block33Value0 recoveredBlock17Block33Value1 |
    recoveredBlock17Block33Value0 := recoveredBlock17Arg1.
    recoveredBlock17Block33Value1 := (recoveredBlock17Block33Value0) value.
    recoveredBlock17Block33Value1
].
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3) ifAbsent: (recoveredBlock17Stack4).
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack3.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 71] ifFalse: [recoveredBlock17PC := 56].
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack3 := $ .
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            (recoveredBlock17Stack2) nextPut: (recoveredBlock17Stack3).
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) nextPutAll: (recoveredBlock17Stack2).
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (self) forEachTokenIn: (recoveredValue2) excludeList: (#()) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    recoveredValue6 := (recoveredValue5) trimBlanks.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20529608; bytecode file offset 0xe25f08"
!SGFormulaParamCtrl methodsFor: 'recovered'!
writeIdentifiersToDataModel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := (self) getIdentifiersFromFormula: (recoveredValue0).
    (self) updateIdentifiersFromList: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) identifiers.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) formulaObject.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) identifiers.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack1 := [:recoveredBlock20Block30Arg1 | 
    | recoveredBlock20Block30Value0 recoveredBlock20Block30Value1 recoveredBlock20Block30Value2 recoveredBlock20Block30Value3 |
    recoveredBlock20Block30Value0 := recoveredBlock20Block30Arg1.
    recoveredBlock20Block30Value1 := (recoveredBlock20Block30Value0) identifier.
    recoveredBlock20Block30Value2 := recoveredBlock20Arg1.
    recoveredBlock20Block30Value3 := (recoveredBlock20Block30Value1) = (recoveredBlock20Block30Value2).
    recoveredBlock20Block30Value3
].
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) findFirst: (recoveredBlock20Stack1).
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack0.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local2.
            recoveredBlock20PC := 52.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack1 := 0.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) ~= (recoveredBlock20Stack1).
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 58] ifFalse: [recoveredBlock20PC := 110].
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack0 := self.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) formulaObject.
            recoveredBlock20PC := 61.
        ].
        recoveredBlock20Step = 61 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) identifiers.
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local2.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) at: (recoveredBlock20Stack1).
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack0.
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local1.
            recoveredBlock20PC := 74.
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) identifier.
            recoveredBlock20PC := 76.
        ].
        recoveredBlock20Step = 76 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 79.
        ].
        recoveredBlock20Step = 79 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) ~= (recoveredBlock20Stack1).
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 84] ifFalse: [recoveredBlock20PC := 92].
        ].
        recoveredBlock20Step = 84 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local1.
            recoveredBlock20PC := 87.
        ].
        recoveredBlock20Step = 87 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 90.
        ].
        recoveredBlock20Step = 90 ifTrue: [
            (recoveredBlock20Stack0) identifier: (recoveredBlock20Stack1).
            recoveredBlock20PC := 92.
        ].
        recoveredBlock20Step = 92 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal1.
            recoveredBlock20PC := 95.
        ].
        recoveredBlock20Step = 95 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local1.
            recoveredBlock20PC := 98.
        ].
        recoveredBlock20Step = 98 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) identifier.
            recoveredBlock20PC := 100.
        ].
        recoveredBlock20Step = 100 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) add: (recoveredBlock20Stack1).
            recoveredBlock20PC := 102.
        ].
        recoveredBlock20Step = 102 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 103.
        ].
        recoveredBlock20Step = 103 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 106.
        ].
        recoveredBlock20Step = 106 ifTrue: [
            recoveredBlock20PC := 143.
        ].
        recoveredBlock20Step = 110 ifTrue: [
            recoveredBlock20Stack0 := self.
            recoveredBlock20PC := 111.
        ].
        recoveredBlock20Step = 111 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) formulaObject.
            recoveredBlock20PC := 113.
        ].
        recoveredBlock20Step = 113 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 116.
        ].
        recoveredBlock20Step = 116 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) addIdentifier: (recoveredBlock20Stack1).
            recoveredBlock20PC := 118.
        ].
        recoveredBlock20Step = 118 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack0.
            recoveredBlock20PC := 121.
        ].
        recoveredBlock20Step = 121 ifTrue: [
            recoveredBlock20Stack0 := nil.
            recoveredBlock20PC := 122.
        ].
        recoveredBlock20Step = 122 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local1.
            recoveredBlock20PC := 125.
        ].
        recoveredBlock20Step = 125 ifTrue: [
            (recoveredBlock20Stack1 == nil) ifTrue: [recoveredBlock20PC := 139] ifFalse: [recoveredBlock20PC := 128].
        ].
        recoveredBlock20Step = 128 ifTrue: [
            recoveredBlock20PC := 129.
        ].
        recoveredBlock20Step = 129 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal1.
            recoveredBlock20PC := 132.
        ].
        recoveredBlock20Step = 132 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local1.
            recoveredBlock20PC := 135.
        ].
        recoveredBlock20Step = 135 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) identifier.
            recoveredBlock20PC := 137.
        ].
        recoveredBlock20Step = 137 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) add: (recoveredBlock20Stack1).
            recoveredBlock20PC := 139.
        ].
        recoveredBlock20Step = 139 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 140.
        ].
        recoveredBlock20Step = 140 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 143.
        ].
        recoveredBlock20Step = 143 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack0.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) formulaObject.
    recoveredValue7 := (recoveredValue6) identifiers.
    recoveredValue8 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Stack0 recoveredBlock151Stack1 recoveredBlock151Stack2 recoveredBlock151Stack3 recoveredBlock151Stack4 recoveredBlock151PC recoveredBlock151Step recoveredBlock151Done recoveredBlock151Result |
    recoveredBlock151Stack0 := self.
    recoveredBlock151PC := 158.
    recoveredBlock151Done := false.
    [recoveredBlock151Done not] whileTrue: [
        recoveredBlock151Step := recoveredBlock151PC.
        recoveredBlock151Step = 158 ifTrue: [
            recoveredBlock151Stack1 := 'Kli'.
            recoveredBlock151PC := 160.
        ].
        recoveredBlock151Step = 160 ifTrue: [
            recoveredBlock151Stack2 := 'Call_64251'.
            recoveredBlock151PC := 162.
        ].
        recoveredBlock151Step = 162 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) = (recoveredBlock151Stack2).
            recoveredBlock151PC := 163.
        ].
        recoveredBlock151Step = 163 ifTrue: [
            recoveredBlock151PC := 164.
        ].
        recoveredBlock151Step = 164 ifTrue: [
            recoveredBlock151Stack1 := nil.
            recoveredBlock151PC := 165.
        ].
        recoveredBlock151Step = 165 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Arg1.
            recoveredBlock151PC := 166.
        ].
        recoveredBlock151Step = 166 ifTrue: [
            (recoveredBlock151Stack2 == nil) ifTrue: [recoveredBlock151PC := 191] ifFalse: [recoveredBlock151PC := 170].
        ].
        recoveredBlock151Step = 170 ifTrue: [
            recoveredBlock151PC := 171.
        ].
        recoveredBlock151Step = 171 ifTrue: [
            recoveredBlock151Stack1 := nil.
            recoveredBlock151PC := 172.
        ].
        recoveredBlock151Step = 172 ifTrue: [
            recoveredBlock151Stack2 := recoveredLocal1.
            recoveredBlock151PC := 175.
        ].
        recoveredBlock151Step = 175 ifTrue: [
            recoveredBlock151Stack3 := recoveredBlock151Arg1.
            recoveredBlock151PC := 176.
        ].
        recoveredBlock151Step = 176 ifTrue: [
            recoveredBlock151Stack3 := (recoveredBlock151Stack3) identifier.
            recoveredBlock151PC := 178.
        ].
        recoveredBlock151Step = 178 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) includes: (recoveredBlock151Stack3).
            recoveredBlock151PC := 180.
        ].
        recoveredBlock151Step = 180 ifTrue: [
            (recoveredBlock151Stack2) ifTrue: [recoveredBlock151PC := 191] ifFalse: [recoveredBlock151PC := 184].
        ].
        recoveredBlock151Step = 184 ifTrue: [
            recoveredBlock151PC := 185.
        ].
        recoveredBlock151Step = 185 ifTrue: [
            recoveredBlock151Stack1 := self.
            recoveredBlock151PC := 186.
        ].
        recoveredBlock151Step = 186 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) formulaObject.
            recoveredBlock151PC := 188.
        ].
        recoveredBlock151Step = 188 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Arg1.
            recoveredBlock151PC := 189.
        ].
        recoveredBlock151Step = 189 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) removeIdentifier: (recoveredBlock151Stack2).
            recoveredBlock151PC := 191.
        ].
        recoveredBlock151Step = 191 ifTrue: [
            recoveredBlock151Result := recoveredBlock151Stack1.
            recoveredBlock151Done := true.
        ].
    ].
    recoveredBlock151Result
].
    (recoveredValue7) do: (recoveredValue8).
    (self) updateIdentifiers.
    ^self
! !

