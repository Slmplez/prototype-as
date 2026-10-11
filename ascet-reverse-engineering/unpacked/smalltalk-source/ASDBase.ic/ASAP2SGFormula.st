"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a7b4; bytecode file offset 0x908be4"
!ASAP2SGFormula methodsFor: 'recovered'!
getIdentifierNamens
    | recoveredValue0 |
    recoveredValue0 := (self) identifiers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015f08; bytecode file offset 0x92209c"
!ASAP2SGFormula methodsFor: 'recovered'!
booleans
    ^#('false' 'true')
! !

"ASDBase.ic method 0x2002a474; bytecode file offset 0x934580"
!ASAP2SGFormula methodsFor: 'recovered'!
unaryOperators
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) unaryOperators.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aee4; bytecode file offset 0x934580"
!ASAP2SGFormula methodsFor: 'recovered'!
compositeOperators
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) compositeOperators.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e5d4; bytecode file offset 0x934580"
!ASAP2SGFormula methodsFor: 'recovered'!
functions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) functions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033f64; bytecode file offset 0x934580"
!ASAP2SGFormula methodsFor: 'recovered'!
binaryOperators
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) binaryOperators.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003894c; bytecode file offset 0x935c54"
!ASAP2SGFormula methodsFor: 'recovered'!
isTwoDTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isRBTwoDCharTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038b08; bytecode file offset 0x935c54"
!ASAP2SGFormula methodsFor: 'recovered'!
isOneDTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isRBOneDCharTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a46c; bytecode file offset 0x947128"
!ASAP2SGFormula methodsFor: 'recovered'!
getStringsAndIndizes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := (self) getStringsAndIndizes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e3c0; bytecode file offset 0x94d048"
!ASAP2SGFormula methodsFor: 'recovered'!
owner
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e678; bytecode file offset 0x94d048"
!ASAP2SGFormula methodsFor: 'recovered'!
containsBuggyExponent
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050fe8; bytecode file offset 0x94f0e0"
!ASAP2SGFormula methodsFor: 'recovered'!
getBinaryOpsKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) binaryOperators.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200511f0; bytecode file offset 0x94f0e0"
!ASAP2SGFormula methodsFor: 'recovered'!
getCompositeOpsKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) compositeOperators.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005154c; bytecode file offset 0x94f0e0"
!ASAP2SGFormula methodsFor: 'recovered'!
getUnaryOpsKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) unaryOperators.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005195c; bytecode file offset 0x94f0e0"
!ASAP2SGFormula methodsFor: 'recovered'!
getFuncKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) functions.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065b4c; bytecode file offset 0x963428"
!ASAP2SGFormula methodsFor: 'recovered'!
identifiers
    | recoveredValue0 |
    recoveredValue0 := identifiers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069094; bytecode file offset 0x965b90"
!ASAP2SGFormula methodsFor: 'recovered'!
esFormula
    | recoveredValue0 |
    recoveredValue0 := esFormula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008071c; bytecode file offset 0x97cfd8"
!ASAP2SGFormula methodsFor: 'recovered'!
leftBracket
    ^$(
! !

"ASDBase.ic method 0x20080938; bytecode file offset 0x97d1ec"
!ASAP2SGFormula methodsFor: 'recovered'!
rightBracket
    ^$)
! !

"ASDBase.ic method 0x20080e20; bytecode file offset 0x97d6ec"
!ASAP2SGFormula methodsFor: 'recovered'!
parameterSeparator
    ^$,
! !

"ASDBase.ic method 0x20082fe8; bytecode file offset 0x97f8cc"
!ASAP2SGFormula methodsFor: 'recovered'!
esIdsAndPos: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    esIdsAndPos := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083708; bytecode file offset 0x980230"
!ASAP2SGFormula methodsFor: 'recovered'!
evaluateFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) evaluateFormula: (recoveredValue0) value: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20085488; bytecode file offset 0x981d40"
!ASAP2SGFormula methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) appliedToNumber: (recoveredValue0) defaultValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008cff4; bytecode file offset 0x989db0"
!ASAP2SGFormula methodsFor: 'recovered'!
setInternalInstanceVariables
    | recoveredValue0 |
    recoveredValue0 := (self) getIDsAndIndizes.
    (self) esIdsAndPos: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009506c; bytecode file offset 0x991c58"
!ASAP2SGFormula methodsFor: 'recovered'!
getOperatorsAndIndizes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) esFormula.
    recoveredValue2 := (self) getOperatorsAndIndizes: (recoveredValue0) string: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009537c; bytecode file offset 0x991c58"
!ASAP2SGFormula methodsFor: 'recovered'!
getIDsAndIndizes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getFuncKeys.
    recoveredValue2 := (self) getIDsAndIndizes: (recoveredValue0) function: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009cbb0; bytecode file offset 0x999628"
!ASAP2SGFormula methodsFor: 'recovered'!
initializeIdentifiers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) identifiers: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ed94; bytecode file offset 0x99b6b8"
!ASAP2SGFormula methodsFor: 'recovered'!
getIDsAndIndizes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := (self) getFuncValues.
    recoveredValue2 := (self) getIDsAndIndizes: (recoveredValue0) function: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f874; bytecode file offset 0x99c9e0"
!ASAP2SGFormula methodsFor: 'recovered'!
eliminateBlanks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := (recoveredValue0) trimAllBlanks.
    (self) esFormula: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bdd4c; bytecode file offset 0x9bb178"
!ASAP2SGFormula methodsFor: 'recovered'!
identifiers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifiers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf4d8; bytecode file offset 0x9bc0b4"
!ASAP2SGFormula methodsFor: 'recovered'!
formula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formula := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfcec; bytecode file offset 0x9bd228"
!ASAP2SGFormula methodsFor: 'recovered'!
esFormula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    esFormula := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d00ac; bytecode file offset 0x9cc978"
!ASAP2SGFormula methodsFor: 'recovered'!
formulaBasic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_72103').
    recoveredValue1 := formula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e1930; bytecode file offset 0x9de1f0"
!ASAP2SGFormula methodsFor: 'recovered'!
formula
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_72103').
    recoveredValue1 := formula.
    recoveredValue2 := (recoveredValue1) replaceCrLfWithBlanks.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e8518; bytecode file offset 0x9e4df4"
!ASAP2SGFormula methodsFor: 'recovered'!
isTwoDimensionalParameter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBDataMatrix.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBTwoDCharTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010189c; bytecode file offset 0x9fe160"
!ASAP2SGFormula methodsFor: 'recovered'!
oneParamFunc: recoveredArg1 method: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) leftBracket.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (self) rightBracket.
    recoveredValue7 := (recoveredValue6) asString.
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2011ecf0; bytecode file offset 0xa1b5ec"
!ASAP2SGFormula methodsFor: 'recovered'!
checkComplexParameter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isOneDimensionalParameter: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTwoDimensionalParameter: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129950; bytecode file offset 0xa26210"
!ASAP2SGFormula methodsFor: 'recovered'!
esIdsAndPos
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := esIdsAndPos.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) getIDsAndIndizes.
    recoveredBlock6Value1 := (self) esIdsAndPos: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013d250; bytecode file offset 0xa39b1c"
!ASAP2SGFormula methodsFor: 'recovered'!
additionalBrackets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) leftBracket.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (self) esFormula.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (self) rightBracket.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    (self) esFormula: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20156c1c; bytecode file offset 0xa534d4"
!ASAP2SGFormula methodsFor: 'recovered'!
checkParameterNumber: recoveredArg1 defParamNumber: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) functionParameter: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionParameter: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161eb8; bytecode file offset 0xa5e784"
!ASAP2SGFormula methodsFor: 'recovered'!
getFuncValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) functions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280ce430Arg1 | 
    | block280ce430Value0 block280ce430Value1 |
    block280ce430Value0 := block280ce430Arg1.
    block280ce430Value1 := (block280ce430Value0) at: (1).
    block280ce430Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201679c8; bytecode file offset 0xa64290"
!ASAP2SGFormula methodsFor: 'recovered'!
substituteFormulaWithNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) subsitute: (recoveredStack1) substitution: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20174bfc; bytecode file offset 0xa714f8"
!ASAP2SGFormula methodsFor: 'recovered'!
isOneDimensionalParameter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBDataVector.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBOneDCharTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDiscreteDistribution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20174c10; bytecode file offset 0xa714f8"
!ASAP2SGFormula methodsFor: 'recovered'!
isScalar: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isArithmeticElement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBDataBoolean.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201781c4; bytecode file offset 0xa74a88"
!ASAP2SGFormula methodsFor: 'recovered'!
indexForIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) esIdsAndPos.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) first.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) identifier.
    recoveredBlock5Value4 := (recoveredBlock5Value1) = (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := (recoveredValue0) findFirst: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017883c; bytecode file offset 0xa750fc"
!ASAP2SGFormula methodsFor: 'recovered'!
evaluateFormulaForComplexParameter: recoveredArg1 value: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) isOneDimensionalParameter: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateFormulaForOneD: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateFormulaForTwoD: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179488; bytecode file offset 0xa75d48"
!ASAP2SGFormula methodsFor: 'recovered'!
returnDataElement: recoveredArg1 dataValue: recoveredArg2 table: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkComplexParameter: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnComplexDataElement: (recoveredStack1) dataValue: (recoveredStack2) table: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) setZValues: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017a9cc; bytecode file offset 0xa7728c"
!ASAP2SGFormula methodsFor: 'recovered'!
orderedIdentifiers
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) indexForIdentifier: (recoveredBlock4Value0).
    recoveredBlock4Value2 := recoveredBlock4Arg2.
    recoveredBlock4Value3 := (self) indexForIdentifier: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value1) <= (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) identifiers.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) asSortedCollection: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017ccec; bytecode file offset 0xa795b4"
!ASAP2SGFormula methodsFor: 'recovered'!
checkIdentifier: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) getFuncKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) getFuncValues.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := (self) getIdentifierNamens.
    (recoveredValue1) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) includes: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) not.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201848dc; bytecode file offset 0xa811a0"
!ASAP2SGFormula methodsFor: 'recovered'!
isBoolType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isBoolean.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isArithmeticElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBBoolean.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a2578; bytecode file offset 0xa9ee44"
!ASAP2SGFormula methodsFor: 'recovered'!
existParameterSeparator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ErrorUndefinedParameter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6490; bytecode file offset 0xaa2d58"
!ASAP2SGFormula methodsFor: 'recovered'!
isScalarValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ETASFormulaError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Compiler Error: (internal number representation)'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e4c30; bytecode file offset 0xae1504"
!ASAP2SGFormula methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := ('Kk') == ('Call_72103').
    (self) initializeIdentifiers.
    (self) formula: ('').
    (self) esFormula: ('').
    ^self
! !

"ASDBase.ic method 0x201e75fc; bytecode file offset 0xae3ec0"
!ASAP2SGFormula methodsFor: 'recovered'!
addIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) buildValidANSICIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) checkIdentifier: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202034a0; bytecode file offset 0xaffd64"
!ASAP2SGFormula methodsFor: 'recovered'!
getSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) checkComplexParameter: (recoveredBlock8Stack3).
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) getSize.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x2020d47c; bytecode file offset 0xb09d44"
!ASAP2SGFormula methodsFor: 'recovered'!
isScalarType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNumber.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isArithmeticElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBFloat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20211fd0; bytecode file offset 0xb0e8a8"
!ASAP2SGFormula methodsFor: 'recovered'!
getCompositeOplist
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compositeOperators.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) unaryOperators.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280da9e8Arg1 | 
    | block280da9e8Value0 block280da9e8Value1 |
    block280da9e8Value0 := block280da9e8Arg1.
    block280da9e8Value1 := (block280da9e8Value0) at: (1).
    block280da9e8Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20213f00; bytecode file offset 0xb107c4"
!ASAP2SGFormula methodsFor: 'recovered'!
checkLeftBracketArea: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftArea: (recoveredStack1).
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
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBracket.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202181d4; bytecode file offset 0xb14aa4"
!ASAP2SGFormula methodsFor: 'recovered'!
isIdentity
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifiers.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifiers.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20228fe0; bytecode file offset 0xb258a4"
!ASAP2SGFormula methodsFor: 'recovered'!
getFirstComplexDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isRBOneDCharTable.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isRBTwoDCharTable.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 29].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x20237108; bytecode file offset 0xb339e8"
!ASAP2SGFormula methodsFor: 'recovered'!
copy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) formulaBasic.
    recoveredValue4 := (recoveredValue3) copy.
    (recoveredValue2) formula: (recoveredValue4).
    recoveredValue5 := ('Kk') == ('Call_72103').
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) esFormula.
    recoveredValue8 := (recoveredValue7) copy.
    (recoveredValue6) esFormula: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) identifiers.
    recoveredValue11 := (recoveredValue10) copy.
    (recoveredValue9) identifiers: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20250820; bytecode file offset 0xb4d0e8"
!ASAP2SGFormula methodsFor: 'recovered'!
eliminateBracket: recoveredArg1 rightBracket: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) copyFrom: (1) to: (recoveredValue2).
    recoveredValue4 := (self) esFormula.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) + (-1).
    recoveredValue9 := (recoveredValue4) copyFrom: (recoveredValue6) to: (recoveredValue8).
    recoveredValue10 := (recoveredValue3) , (recoveredValue9).
    recoveredValue11 := (self) esFormula.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) + (1).
    recoveredValue14 := (self) esFormula.
    recoveredValue15 := (recoveredValue14) size.
    recoveredValue16 := (recoveredValue11) copyFrom: (recoveredValue13) to: (recoveredValue15).
    recoveredValue17 := (recoveredValue10) , (recoveredValue16).
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := recoveredLocal1.
    (self) esFormula: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x2025b23c; bytecode file offset 0xb57b0c"
!ASAP2SGFormula methodsFor: 'recovered'!
functionParameter: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightPartnerBracket: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightBracket.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfSections: (recoveredStack1) leftBracket: (recoveredStack2) rightBracket: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b1c84; bytecode file offset 0xbae558"
!ASAP2SGFormula methodsFor: 'recovered'!
appliedToNumber: recoveredArg1 defaultValue: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifiers.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateFormula: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c5218; bytecode file offset 0xbc1af4"
!ASAP2SGFormula methodsFor: 'recovered'!
checkParameterSeparators
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) parameterSeparator.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 43].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg2.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) checkParameterSeparatorArea: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 43].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := ETASFormulaError.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := ErrorSeparators.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack3 := Array.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg2.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) asString.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) with: (recoveredBlock5Stack4).
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg2.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) create: (recoveredBlock5Stack2) with: (recoveredBlock5Stack3) position: (recoveredBlock5Stack4).
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202cb30c; bytecode file offset 0xbc7bdc"
!ASAP2SGFormula methodsFor: 'recovered'!
returnComplexDataElement: recoveredArg1 dataValue: recoveredArg2 table: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) dim.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) dim.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) setSize: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setZValues: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBOneDCharTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBTwoDCharTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) adjustDistribution: (recoveredStack2) table: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202da50c; bytecode file offset 0xbd6ddc"
!ASAP2SGFormula methodsFor: 'recovered'!
adjustDistribution: recoveredArg1 table: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) getFirstComplexDataElement: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) xDistribution.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) xDistribution.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) getPhysValue.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack1) setPhysValue: (recoveredBlock8Stack2).
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isRBTwoDCharTable.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 32] ifFalse: [recoveredBlock8PC := 43].
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) yDistribution.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) yDistribution.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) getPhysValue.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) setPhysValue: (recoveredBlock8Stack2).
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202df080; bytecode file offset 0xbdb954"
!ASAP2SGFormula methodsFor: 'recovered'!
getIDsLiteralsAndIndizes
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) getFuncKeys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) getStringsAndIndizes.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal1.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack4 := 1.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4).
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) includes: (recoveredBlock16Stack3).
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 43] ifFalse: [recoveredBlock16PC := 36].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal2.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) add: (recoveredBlock16Stack2).
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203012ec; bytecode file offset 0xbfdbc0"
!ASAP2SGFormula methodsFor: 'recovered'!
getIDsAndIndizes: recoveredArg1 function: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getStringsAndIndizes: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack4 := 1.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) at: (recoveredBlock14Stack4).
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) includes: (recoveredBlock14Stack3).
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 47] ifFalse: [recoveredBlock14PC := 34].
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isLiteral.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 47] ifFalse: [recoveredBlock14PC := 40].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20319cf8; bytecode file offset 0xc165b8"
!ASAP2SGFormula methodsFor: 'recovered'!
getBinaryOpWithHighestPrio: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) binaryOperators.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := 1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) at: (recoveredBlock7Stack1).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := 2.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) at: (recoveredBlock7Stack1).
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 40] ifFalse: [recoveredBlock7PC := 32].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 40] ifFalse: [recoveredBlock7PC := 50].
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal2.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2031f870; bytecode file offset 0xc1c130"
!ASAP2SGFormula methodsFor: 'recovered'!
checkOneDTable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isScalar: (recoveredBlock7Stack3).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 53] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 40] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) getXValues.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getXValues.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ~= (recoveredBlock7Stack3).
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 50] ifFalse: [recoveredBlock7PC := 53].
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x203589b8; bytecode file offset 0xc552a8"
!ASAP2SGFormula methodsFor: 'recovered'!
getStringsAndIndizes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUnaryOpsKeys.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBinaryOpsKeys.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterSeparator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBracket.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:block280efc64Arg1 :block280efc64Arg2 | 
    | block280efc64Value0 block280efc64Value1 block280efc64Value2 block280efc64Value3 block280efc64Value4 |
    block280efc64Value0 := block280efc64Arg1.
    block280efc64Value1 := (block280efc64Value0) size.
    block280efc64Value2 := block280efc64Arg2.
    block280efc64Value3 := (block280efc64Value2) size.
    block280efc64Value4 := (block280efc64Value1) >= (block280efc64Value3).
    block280efc64Value4
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'Call_66074'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStringsAndPositionInString: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035fa84; bytecode file offset 0xc5c360"
!ASAP2SGFormula methodsFor: 'recovered'!
evaluateFormula: recoveredArg1 value: recoveredArg2
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsBuggyExponent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) calculateEsFormula.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkComplexParameter: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateFormulaForComplexParameter: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateFormulaForScalarParameter: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnDataElement: (recoveredStack1) dataValue: (recoveredStack2) table: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicsRepresentation.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) setValue: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20382ba4; bytecode file offset 0xc7f488"
!ASAP2SGFormula methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: ('Formula: ').
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) formula.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) nextPutAll: ('EsFormula: ').
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) esFormula.
    (recoveredValue10) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := (self) identifiers.
    recoveredValue16 := (recoveredValue15) printString.
    (recoveredValue14) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) nextPutAll: ('EsIdentifier: ').
    recoveredValue19 := recoveredValue0.
    recoveredValue20 := (self) esIdsAndPos.
    recoveredValue21 := (recoveredValue20) printString.
    (recoveredValue19) nextPutAll: (recoveredValue21).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20385c54; bytecode file offset 0xc82528"
!ASAP2SGFormula methodsFor: 'recovered'!
checkNameArea: recoveredArg1 function: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightArea: (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftBracket.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftBracket.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203995b4; bytecode file offset 0xc95e80"
!ASAP2SGFormula methodsFor: 'recovered'!
eliminateBrackets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightPartnerBracket: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightPartnerBracket: (recoveredStack2).
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
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) eliminateBracket: (recoveredStack2) rightBracket: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039ef04; bytecode file offset 0xc9b7e4"
!ASAP2SGFormula methodsFor: 'recovered'!
getFunctionsAndIndizes
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) getFuncKeys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) getStringsAndIndizes.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16Stack6 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal1.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack4 := 1.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4).
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) includes: (recoveredBlock16Stack3).
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 36] ifFalse: [recoveredBlock16PC := 69].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) esFormula.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack4 := 2.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4).
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Arg1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack5 := 1.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) at: (recoveredBlock16Stack5).
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) size.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) + (recoveredBlock16Stack4).
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 54.
        ].
        recoveredBlock16Step = 54 ifTrue: [
            recoveredBlock16Stack3 := self.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) leftBracket.
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) = (recoveredBlock16Stack3).
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 62] ifFalse: [recoveredBlock16PC := 69].
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal2.
            recoveredBlock16PC := 66.
        ].
        recoveredBlock16Step = 66 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 67.
        ].
        recoveredBlock16Step = 67 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) add: (recoveredBlock16Stack2).
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203cdda0; bytecode file offset 0xcca664"
!ASAP2SGFormula methodsFor: 'recovered'!
checkTwoDTable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isScalar: (recoveredBlock7Stack3).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 79] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal2.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 38] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) getXValues.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal2.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getXValues.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ~= (recoveredBlock7Stack2).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 50].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 66] ifFalse: [recoveredBlock7PC := 56].
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) getYValues.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) getYValues.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ~= (recoveredBlock7Stack3).
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 76] ifFalse: [recoveredBlock7PC := 79].
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x203d757c; bytecode file offset 0xcd3e50"
!ASAP2SGFormula methodsFor: 'recovered'!
checkParameterSeparatorArea: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftArea: (recoveredStack1).
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
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftBracket.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightArea: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBracket.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20419530; bytecode file offset 0xd15e1c"
!ASAP2SGFormula methodsFor: 'recovered'!
checkUnaryOperators: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightArea: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ErrorIncorrectUsedOperator.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) with: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBracket.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := ErrorIncorrectUsedOperator.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) with: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20425474; bytecode file offset 0xd21d6c"
!ASAP2SGFormula methodsFor: 'recovered'!
getOperatorsAndIndizes: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := recoveredLocal4.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) getIdentifierNamens.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) leftBracket.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue4) addFirst: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) rightBracket.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue7) addFirst: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) parameterSeparator.
    recoveredValue12 := (recoveredValue11) asString.
    (recoveredValue10) addFirst: (recoveredValue12).
    recoveredValue13 := (self) booleans.
    (recoveredValue1) addAll: (recoveredValue13).
    recoveredValue14 := ('Kk') == ('Call_66074').
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := (recoveredValue15) subStringsAndPositionInString: (recoveredValue16).
    recoveredLocal5 := recoveredValue17.
    recoveredValue18 := OrderedCollection.
    recoveredValue19 := (recoveredValue18) new.
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := recoveredLocal5.
    recoveredValue21 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 recoveredBlock70Value5 recoveredBlock70Value6 |
    recoveredBlock70Value0 := recoveredLocal1.
    recoveredBlock70Value1 := recoveredBlock70Arg1.
    recoveredBlock70Value2 := (recoveredBlock70Value1) at: (1).
    recoveredBlock70Value3 := recoveredBlock70Arg1.
    recoveredBlock70Value4 := (recoveredBlock70Value3) at: (2).
    recoveredBlock70Value5 := (self) extractOperators: (recoveredBlock70Value2) index: (recoveredBlock70Value4).
    recoveredBlock70Value6 := (recoveredBlock70Value0) addAll: (recoveredBlock70Value5).
    recoveredBlock70Value6
].
    (recoveredValue20) do: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) asArray.
    ^recoveredValue23
! !

"ASDBase.ic method 0x20433e68; bytecode file offset 0xd3074c"
!ASAP2SGFormula methodsFor: 'recovered'!
checkRightBracketArea: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightArea: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBracket.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBinaryOpsKeys.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75Stack5 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack2 := self.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) esFormula.
            recoveredBlock75PC := 85.
        ].
        recoveredBlock75Step = 85 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack4 := recoveredLocal1.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) indexOfSubCollection: (recoveredBlock75Stack3) startingAt: (recoveredBlock75Stack4).
            recoveredBlock75PC := 91.
        ].
        recoveredBlock75Step = 91 ifTrue: [
            recoveredBlock75Stack3 := recoveredLocal1.
            recoveredBlock75PC := 94.
        ].
        recoveredBlock75Step = 94 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) = (recoveredBlock75Stack3).
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 98] ifFalse: [recoveredBlock75PC := 101].
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75PC := 99.
        ].
        recoveredBlock75Step = 99 ifTrue: [
            recoveredBlock75Stack1 := false.
            recoveredBlock75PC := 100.
        ].
        recoveredBlock75Step = 100 ifTrue: [
            ^recoveredBlock75Stack1
        ].
        recoveredBlock75Step = 101 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20434a20; bytecode file offset 0xd312ec"
!ASAP2SGFormula methodsFor: 'recovered'!
leftPartnerBracket: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) copyFrom: (1) to: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) reversed.
    recoveredValue5 := [:recoveredBlock24Arg1 :recoveredBlock24Arg2 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) leftBracket.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) = (recoveredBlock24Stack2).
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 38] ifFalse: [recoveredBlock24PC := 51].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) + (1).
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) rightBracket.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) = (recoveredBlock24Stack2).
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 60] ifFalse: [recoveredBlock24PC := 73].
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 63.
        ].
        recoveredBlock24Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 69.
        ].
        recoveredBlock24Step = 69 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) + (-1).
            recoveredBlock24PC := 70.
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            recoveredBlock24Stack3 := 0.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 80.
        ].
        recoveredBlock24Step = 80 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 84] ifFalse: [recoveredBlock24PC := 101].
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24Stack3 := 0.
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) < (recoveredBlock24Stack3).
            recoveredBlock24PC := 90.
        ].
        recoveredBlock24Step = 90 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 94] ifFalse: [recoveredBlock24PC := 101].
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg2.
            recoveredBlock24PC := 99.
        ].
        recoveredBlock24Step = 99 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) - (recoveredBlock24Stack2).
            recoveredBlock24PC := 100.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    ^nil
! !

"ASDBase.ic method 0x2043cb6c; bytecode file offset 0xd39438"
!ASAP2SGFormula methodsFor: 'recovered'!
rightPartnerBracket: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := (self) esFormula.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) esFormula.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue0) copyFrom: (recoveredValue1) to: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := self.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) leftBracket.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 51].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (1).
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack2 := self.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) rightBracket.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 60] ifFalse: [recoveredBlock23PC := 73].
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (-1).
            recoveredBlock23PC := 70.
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 73.
        ].
        recoveredBlock23Step = 73 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 74.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal2.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack3 := 0.
            recoveredBlock23PC := 79.
        ].
        recoveredBlock23Step = 79 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) = (recoveredBlock23Stack3).
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 84] ifFalse: [recoveredBlock23PC := 102].
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredBlock23Stack3 := 0.
            recoveredBlock23PC := 89.
        ].
        recoveredBlock23Step = 89 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) > (recoveredBlock23Stack3).
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 94] ifFalse: [recoveredBlock23PC := 102].
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23PC := 95.
        ].
        recoveredBlock23Step = 95 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg2.
            recoveredBlock23PC := 96.
        ].
        recoveredBlock23Step = 96 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg1.
            recoveredBlock23PC := 99.
        ].
        recoveredBlock23Step = 99 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 100.
        ].
        recoveredBlock23Step = 100 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (-1).
            recoveredBlock23PC := 101.
        ].
        recoveredBlock23Step = 101 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 102 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    ^-1
! !

"ASDBase.ic method 0x20444130; bytecode file offset 0xd40a20"
!ASAP2SGFormula methodsFor: 'recovered'!
checkBinaryOperators: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkUnaryOperators: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftArea: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ErrorIncorrectUsedOperator.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) with: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftBracket.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := ErrorIncorrectUsedOperator.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) with: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20493844; bytecode file offset 0xd9014c"
!ASAP2SGFormula methodsFor: 'recovered'!
isCompositeIdentityFormula
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCompositeOplist.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightBracket.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterSeparator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStringsInString: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIdentifierNamens.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 recoveredBlock59Value7 |
    recoveredBlock59Value0 := recoveredLocal5.
    recoveredBlock59Value1 := recoveredBlock59Arg1.
    recoveredBlock59Value2 := (recoveredBlock59Value0) includes: (recoveredBlock59Value1).
    recoveredBlock59Value3 := (recoveredBlock59Value2) not.
    recoveredBlock59Value4 := recoveredBlock59Arg1.
    recoveredBlock59Value5 := (recoveredBlock59Value4) isNumericString.
    recoveredBlock59Value6 := (recoveredBlock59Value5) not.
    recoveredBlock59Value7 := (recoveredBlock59Value3) & (recoveredBlock59Value6).
    recoveredBlock59Value7
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 94].
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
            recoveredBlock97Stack1 := nil.
            recoveredBlock97PC := 105.
        ].
        recoveredBlock97Step = 105 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal4.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredBlock97Stack3 := recoveredBlock97Arg1.
            recoveredBlock97PC := 109.
        ].
        recoveredBlock97Step = 109 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) includes: (recoveredBlock97Stack3).
            recoveredBlock97PC := 111.
        ].
        recoveredBlock97Step = 111 ifTrue: [
            (recoveredBlock97Stack2) ifTrue: [recoveredBlock97PC := 128] ifFalse: [recoveredBlock97PC := 114].
        ].
        recoveredBlock97Step = 114 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Arg1.
            recoveredBlock97PC := 115.
        ].
        recoveredBlock97Step = 115 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) isNumeric.
            recoveredBlock97PC := 117.
        ].
        recoveredBlock97Step = 117 ifTrue: [
            (recoveredBlock97Stack2) ifTrue: [recoveredBlock97PC := 128] ifFalse: [recoveredBlock97PC := 120].
        ].
        recoveredBlock97Step = 120 ifTrue: [
            recoveredBlock97PC := 121.
        ].
        recoveredBlock97Step = 121 ifTrue: [
            recoveredBlock97Stack1 := ETASFormulaError.
            recoveredBlock97PC := 123.
        ].
        recoveredBlock97Step = 123 ifTrue: [
            recoveredBlock97Stack2 := 'Operators  listed in the operator list box are only allowed in the formula'.
            recoveredBlock97PC := 125.
        ].
        recoveredBlock97Step = 125 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) create: (recoveredBlock97Stack2).
            recoveredBlock97PC := 127.
        ].
        recoveredBlock97Step = 127 ifTrue: [
            ^recoveredBlock97Stack1
        ].
        recoveredBlock97Step = 128 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b6784; bytecode file offset 0xdb3070"
!ASAP2SGFormula methodsFor: 'recovered'!
replaceBinaryOperators
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBinaryOpWithHighestPrio: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) binaryOperators.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftPartnerBracket: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightPartnerBracket: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightBracket.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack5 := (recoveredStack5) esFormula.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) esFormula: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBinaryOpsAndIndizes.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cfcb8; bytecode file offset 0xdcc5a4"
!ASAP2SGFormula methodsFor: 'recovered'!
getUnaryOpsAndIndizes
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) getFuncValues.
    recoveredValue1 := (self) getOperatorsAndIndizes: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) esFormula.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack4 := 2.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) at: (recoveredBlock19Stack4).
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) + (-1).
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) at: (recoveredBlock19Stack3).
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack3 := self.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) rightBracket.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 146] ifFalse: [recoveredBlock19PC := 46].
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) esFormula.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack3 := 2.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) at: (recoveredBlock19Stack3).
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) + (-1).
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2).
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) leftBracket.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) = (recoveredBlock19Stack2).
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 66] ifFalse: [recoveredBlock19PC := 140].
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Stack3 := 2.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) at: (recoveredBlock19Stack3).
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) rightPartnerBracket: (recoveredBlock19Stack2).
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) esFormula.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) size.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) >= (recoveredBlock19Stack2).
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 86].
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) esFormula.
            recoveredBlock19PC := 89.
        ].
        recoveredBlock19Step = 89 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) + (1).
            recoveredBlock19PC := 91.
        ].
        recoveredBlock19Step = 91 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2).
            recoveredBlock19PC := 93.
        ].
        recoveredBlock19Step = 93 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 94.
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) rightBracket.
            recoveredBlock19PC := 96.
        ].
        recoveredBlock19Step = 96 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) ~= (recoveredBlock19Stack2).
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 110].
        ].
        recoveredBlock19Step = 100 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 104.
        ].
        recoveredBlock19Step = 104 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 106.
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 111.
        ].
        recoveredBlock19Step = 111 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 112.
        ].
        recoveredBlock19Step = 112 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) unaryOperators.
            recoveredBlock19PC := 114.
        ].
        recoveredBlock19Step = 114 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 115.
        ].
        recoveredBlock19Step = 115 ifTrue: [
            recoveredBlock19Stack4 := 1.
            recoveredBlock19PC := 117.
        ].
        recoveredBlock19Step = 117 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) at: (recoveredBlock19Stack4).
            recoveredBlock19PC := 119.
        ].
        recoveredBlock19Step = 119 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) at: (recoveredBlock19Stack3).
            recoveredBlock19PC := 121.
        ].
        recoveredBlock19Step = 121 ifTrue: [
            recoveredBlock19Stack3 := 1.
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) at: (recoveredBlock19Stack3).
            recoveredBlock19PC := 125.
        ].
        recoveredBlock19Step = 125 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 135] ifFalse: [recoveredBlock19PC := 128].
        ].
        recoveredBlock19Step = 128 ifTrue: [
            recoveredBlock19PC := 129.
        ].
        recoveredBlock19Step = 129 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 132.
        ].
        recoveredBlock19Step = 132 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 133.
        ].
        recoveredBlock19Step = 133 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 135 ifTrue: [
            recoveredBlock19Stack2 := nil.
            recoveredBlock19PC := 136.
        ].
        recoveredBlock19Step = 136 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 137.
        ].
        recoveredBlock19Step = 137 ifTrue: [
            recoveredBlock19PC := 146.
        ].
        recoveredBlock19Step = 140 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 143.
        ].
        recoveredBlock19Step = 143 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 144.
        ].
        recoveredBlock19Step = 144 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 146.
        ].
        recoveredBlock19Step = 146 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) asArray.
    ^recoveredValue7
! !

"ASDBase.ic method 0x204d64cc; bytecode file offset 0xdd2dbc"
!ASAP2SGFormula methodsFor: 'recovered'!
checkBrackets
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) leftBracket.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) = (recoveredBlock10Stack2).
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 24] ifFalse: [recoveredBlock10PC := 54].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) + (1).
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) + (1).
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) checkLeftBracketArea: (recoveredBlock10Stack2).
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 38] ifFalse: [recoveredBlock10PC := 54].
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack1 := ETASFormulaError.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack2 := ErrorNearBracket.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack3 := Array.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg2.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack4 := (recoveredBlock10Stack4) asString.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) with: (recoveredBlock10Stack4).
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg2.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) create: (recoveredBlock10Stack2) with: (recoveredBlock10Stack3) position: (recoveredBlock10Stack4).
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 54 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 56.
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) rightBracket.
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) = (recoveredBlock10Stack2).
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 62] ifFalse: [recoveredBlock10PC := 94].
        ].
        recoveredBlock10Step = 62 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 65.
        ].
        recoveredBlock10Step = 65 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) + (-1).
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 70.
        ].
        recoveredBlock10Step = 70 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) + (1).
            recoveredBlock10PC := 72.
        ].
        recoveredBlock10Step = 72 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) checkRightBracketArea: (recoveredBlock10Stack2).
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 78] ifFalse: [recoveredBlock10PC := 94].
        ].
        recoveredBlock10Step = 78 ifTrue: [
            recoveredBlock10Stack1 := ETASFormulaError.
            recoveredBlock10PC := 80.
        ].
        recoveredBlock10Step = 80 ifTrue: [
            recoveredBlock10Stack2 := ErrorNearBracket.
            recoveredBlock10PC := 82.
        ].
        recoveredBlock10Step = 82 ifTrue: [
            recoveredBlock10Stack3 := Array.
            recoveredBlock10PC := 84.
        ].
        recoveredBlock10Step = 84 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg2.
            recoveredBlock10PC := 85.
        ].
        recoveredBlock10Step = 85 ifTrue: [
            recoveredBlock10Stack4 := (recoveredBlock10Stack4) asString.
            recoveredBlock10PC := 87.
        ].
        recoveredBlock10Step = 87 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) with: (recoveredBlock10Stack4).
            recoveredBlock10PC := 89.
        ].
        recoveredBlock10Step = 89 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg2.
            recoveredBlock10PC := 90.
        ].
        recoveredBlock10Step = 90 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) create: (recoveredBlock10Stack2) with: (recoveredBlock10Stack3) position: (recoveredBlock10Stack4).
            recoveredBlock10PC := 93.
        ].
        recoveredBlock10Step = 93 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 94 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 95.
        ].
        recoveredBlock10Step = 95 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal1.
            recoveredBlock10PC := 98.
        ].
        recoveredBlock10Step = 98 ifTrue: [
            recoveredBlock10Stack3 := 0.
            recoveredBlock10PC := 100.
        ].
        recoveredBlock10Step = 100 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) < (recoveredBlock10Stack3).
            recoveredBlock10PC := 101.
        ].
        recoveredBlock10Step = 101 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 104] ifFalse: [recoveredBlock10PC := 121].
        ].
        recoveredBlock10Step = 104 ifTrue: [
            recoveredBlock10PC := 105.
        ].
        recoveredBlock10Step = 105 ifTrue: [
            recoveredBlock10Stack1 := ETASFormulaError.
            recoveredBlock10PC := 107.
        ].
        recoveredBlock10Step = 107 ifTrue: [
            recoveredBlock10Stack2 := ErrorCloseBracket.
            recoveredBlock10PC := 109.
        ].
        recoveredBlock10Step = 109 ifTrue: [
            recoveredBlock10Stack3 := Array.
            recoveredBlock10PC := 111.
        ].
        recoveredBlock10Step = 111 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg2.
            recoveredBlock10PC := 112.
        ].
        recoveredBlock10Step = 112 ifTrue: [
            recoveredBlock10Stack4 := (recoveredBlock10Stack4) asString.
            recoveredBlock10PC := 114.
        ].
        recoveredBlock10Step = 114 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) with: (recoveredBlock10Stack4).
            recoveredBlock10PC := 116.
        ].
        recoveredBlock10Step = 116 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg2.
            recoveredBlock10PC := 117.
        ].
        recoveredBlock10Step = 117 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) create: (recoveredBlock10Stack2) with: (recoveredBlock10Stack3) position: (recoveredBlock10Stack4).
            recoveredBlock10PC := 120.
        ].
        recoveredBlock10Step = 120 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 121 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := ErrorOpenBracket.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) with: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e0260; bytecode file offset 0xddcb50"
!ASAP2SGFormula methodsFor: 'recovered'!
replaceFunctions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightPartnerBracket: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) functions.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) oneParamFunc: (recoveredStack3) method: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) mulParamFunc: (recoveredStack3) method: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightBracket.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := (recoveredStack5) esFormula.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) esFormula: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFunctionsAndIndizes.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f1d40; bytecode file offset 0xdee620"
!ASAP2SGFormula methodsFor: 'recovered'!
mulParamFunc: recoveredArg1 method: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterSeparator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftBracket.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightBracket.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfSections: (recoveredStack2) leftBracket: (recoveredStack3) rightBracket: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftBracket.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 34] ifFalse: [recoveredPC := 56]] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 recoveredBlock65Value6 recoveredBlock65Value7 recoveredBlock65Value8 recoveredBlock65Value9 recoveredBlock65Value10 recoveredBlock65Value11 recoveredBlock65Value12 recoveredBlock65Value13 recoveredBlock65Value14 recoveredBlock65Value15 recoveredBlock65Value16 recoveredBlock65Value17 recoveredBlock65Value18 recoveredBlock65Value19 recoveredBlock65Value20 |
    recoveredBlock65Value0 := recoveredLocal4.
    recoveredBlock65Value1 := recoveredArg1.
    recoveredBlock65Value2 := recoveredLocal1.
    recoveredBlock65Value3 := recoveredBlock65Arg1.
    recoveredBlock65Value4 := (recoveredBlock65Value3) + (-1).
    recoveredBlock65Value5 := (recoveredBlock65Value1) copyFrom: (recoveredBlock65Value2) to: (recoveredBlock65Value4).
    recoveredBlock65Value6 := (recoveredBlock65Value0) , (recoveredBlock65Value5).
    recoveredBlock65Value7 := (self) rightBracket.
    recoveredBlock65Value8 := (recoveredBlock65Value7) asString.
    recoveredBlock65Value9 := (recoveredBlock65Value6) , (recoveredBlock65Value8).
    recoveredBlock65Value10 := (self) rightBracket.
    recoveredBlock65Value11 := (recoveredBlock65Value10) asString.
    recoveredBlock65Value12 := (recoveredBlock65Value9) , (recoveredBlock65Value11).
    recoveredBlock65Value13 := recoveredArg2.
    recoveredBlock65Value14 := (recoveredBlock65Value12) , (recoveredBlock65Value13).
    recoveredBlock65Value15 := (self) leftBracket.
    recoveredBlock65Value16 := (recoveredBlock65Value15) asString.
    recoveredBlock65Value17 := (recoveredBlock65Value14) , (recoveredBlock65Value16).
    recoveredLocal4 := recoveredBlock65Value17.
    recoveredBlock65Value18 := recoveredBlock65Arg1.
    recoveredBlock65Value19 := (recoveredBlock65Value18) + (1).
    recoveredBlock65Value20 := recoveredBlock65Value19.
    recoveredLocal1 := recoveredBlock65Value20.
    recoveredBlock65Value19
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftBracket.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightBracket.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterSeparator.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) doSections: (recoveredStack2) leftBracket: (recoveredStack3) rightBracket: (recoveredStack4) separator: (recoveredStack5).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20506e1c; bytecode file offset 0xe036f0"
!ASAP2SGFormula methodsFor: 'recovered'!
checkSize: recoveredArg1 dataValue: recoveredArg2
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
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isScalar: (recoveredBlock7Stack1).
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 20] ifFalse: [recoveredBlock7PC := 76].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := 1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) = (recoveredBlock7Stack2).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 72].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isRBTwoDCharTable.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 40].
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isRBDataMatrix.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 60].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack0 := 1.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := 1.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) @ (recoveredBlock7Stack1).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack0 := 1.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal2.
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7PC := 135.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal2.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 92] ifFalse: [recoveredBlock7PC := 82].
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) getSize.
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 88.
        ].
        recoveredBlock7Step = 88 ifTrue: [
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 92 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal2.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 96.
        ].
        recoveredBlock7Step = 96 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) getSize.
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) ~= (recoveredBlock7Stack1).
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 102] ifFalse: [recoveredBlock7PC := 104].
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack0 := true.
            recoveredBlock7PC := 103.
        ].
        recoveredBlock7Step = 103 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 107.
        ].
        recoveredBlock7Step = 107 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 120] ifFalse: [recoveredBlock7PC := 110].
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 111.
        ].
        recoveredBlock7Step = 111 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) getMaxSize.
            recoveredBlock7PC := 113.
        ].
        recoveredBlock7Step = 113 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 114.
        ].
        recoveredBlock7Step = 114 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 117.
        ].
        recoveredBlock7Step = 117 ifTrue: [
            recoveredBlock7PC := 135.
        ].
        recoveredBlock7Step = 120 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 121.
        ].
        recoveredBlock7Step = 121 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 125.
        ].
        recoveredBlock7Step = 125 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getMaxSize.
            recoveredBlock7PC := 127.
        ].
        recoveredBlock7Step = 127 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ~= (recoveredBlock7Stack2).
            recoveredBlock7PC := 128.
        ].
        recoveredBlock7Step = 128 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 132] ifFalse: [recoveredBlock7PC := 135].
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7PC := 133.
        ].
        recoveredBlock7Step = 133 ifTrue: [
            recoveredBlock7Stack0 := true.
            recoveredBlock7PC := 134.
        ].
        recoveredBlock7Step = 134 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 135 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMaxSize.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMaxSize.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20509d00; bytecode file offset 0xe06638"
!ASAP2SGFormula methodsFor: 'recovered'!
calculateEsFormula
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_52509'.
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
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceCrLfWithBlanks.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) esFormula: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Call_2001237'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBrackets.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkParameterSeparators.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkNamens.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkOperators.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) normalizeFormula.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) eliminateBlanks.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) additionalBrackets.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) replaceFunctions.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) existParameterSeparator.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'call_80546'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceUnaryOperators.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) replaceBinaryOperators.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) eliminateBrackets.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) setInternalInstanceVariables.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposite.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCompositeIdentityFormula.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205108f4; bytecode file offset 0xe0d1d8"
!ASAP2SGFormula methodsFor: 'recovered'!
calculateEvalString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) esIdsAndPos.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal3.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 32] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := 1.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal3.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack2 := 1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) size.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal3.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack3 := 2.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) at: (recoveredBlock11Stack3).
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) + (recoveredBlock11Stack2).
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack2 := 2.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) + (-1).
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 58.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal4.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) esFormula.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack3 := recoveredLocal2.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack4 := recoveredLocal1.
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) copyFrom: (recoveredBlock11Stack3) to: (recoveredBlock11Stack4).
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 74.
        ].
        recoveredBlock11Step = 74 ifTrue: [
            recoveredLocal4 := recoveredBlock11Stack1.
            recoveredBlock11PC := 77.
        ].
        recoveredBlock11Step = 77 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 81.
        ].
        recoveredBlock11Step = 81 ifTrue: [
            recoveredBlock11Stack3 := 1.
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) at: (recoveredBlock11Stack3).
            recoveredBlock11PC := 84.
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11Stack3 := [].
            recoveredBlock11PC := 86.
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 90.
        ].
        recoveredBlock11Step = 90 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 110] ifFalse: [recoveredBlock11PC := 94].
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal4.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack3 := 1.
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) at: (recoveredBlock11Stack3).
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 103.
        ].
        recoveredBlock11Step = 103 ifTrue: [
            recoveredLocal4 := recoveredBlock11Stack1.
            recoveredBlock11PC := 106.
        ].
        recoveredBlock11Step = 106 ifTrue: [
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 110 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal4.
            recoveredBlock11PC := 113.
        ].
        recoveredBlock11Step = 113 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 114.
        ].
        recoveredBlock11Step = 114 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            recoveredLocal4 := recoveredBlock11Stack1.
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 120.
        ].
        recoveredBlock11Step = 120 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            recoveredLocal3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 124.
        ].
        recoveredBlock11Step = 124 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) esIdsAndPos.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) esIdsAndPos.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20519d04; bytecode file offset 0xe165f8"
!ASAP2SGFormula methodsFor: 'recovered'!
getBinaryOpsAndIndizes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) getFuncKeys.
    recoveredValue1 := (self) getOperatorsAndIndizes: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) getBinaryOpsKeys.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Local2 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25Stack6 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal2.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack4 := 1.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) at: (recoveredBlock25Stack4).
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) includes: (recoveredBlock25Stack3).
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 46] ifFalse: [recoveredBlock25PC := 181].
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) esFormula.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack4 := 2.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) at: (recoveredBlock25Stack4).
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) + (-1).
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) at: (recoveredBlock25Stack3).
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack3 := self.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) rightBracket.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) = (recoveredBlock25Stack3).
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 64] ifFalse: [recoveredBlock25PC := 181].
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) esFormula.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack4 := 2.
            recoveredBlock25PC := 70.
        ].
        recoveredBlock25Step = 70 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) at: (recoveredBlock25Stack4).
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack4 := recoveredBlock25Arg1.
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack5 := 1.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) at: (recoveredBlock25Stack5).
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) size.
            recoveredBlock25PC := 79.
        ].
        recoveredBlock25Step = 79 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) + (recoveredBlock25Stack4).
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) at: (recoveredBlock25Stack3).
            recoveredBlock25PC := 82.
        ].
        recoveredBlock25Step = 82 ifTrue: [
            recoveredBlock25Stack3 := self.
            recoveredBlock25PC := 83.
        ].
        recoveredBlock25Step = 83 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) leftBracket.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) = (recoveredBlock25Stack3).
            recoveredBlock25PC := 86.
        ].
        recoveredBlock25Step = 86 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 90] ifFalse: [recoveredBlock25PC := 181].
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25PC := 91.
        ].
        recoveredBlock25Step = 91 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 93.
        ].
        recoveredBlock25Step = 93 ifTrue: [
            recoveredBlock25Stack3 := 2.
            recoveredBlock25PC := 95.
        ].
        recoveredBlock25Step = 95 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) at: (recoveredBlock25Stack3).
            recoveredBlock25PC := 97.
        ].
        recoveredBlock25Step = 97 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) rightPartnerBracket: (recoveredBlock25Stack2).
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 99 ifTrue: [
            recoveredBlock25Local2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 100.
        ].
        recoveredBlock25Step = 100 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 101.
        ].
        recoveredBlock25Step = 101 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 102.
        ].
        recoveredBlock25Step = 102 ifTrue: [
            recoveredBlock25Stack3 := 2.
            recoveredBlock25PC := 104.
        ].
        recoveredBlock25Step = 104 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) at: (recoveredBlock25Stack3).
            recoveredBlock25PC := 106.
        ].
        recoveredBlock25Step = 106 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) leftPartnerBracket: (recoveredBlock25Stack2).
            recoveredBlock25PC := 108.
        ].
        recoveredBlock25Step = 108 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 109.
        ].
        recoveredBlock25Step = 109 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local1.
            recoveredBlock25PC := 110.
        ].
        recoveredBlock25Step = 110 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) + (-1).
            recoveredBlock25PC := 111.
        ].
        recoveredBlock25Step = 111 ifTrue: [
            recoveredBlock25Stack2 := 1.
            recoveredBlock25PC := 113.
        ].
        recoveredBlock25Step = 113 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) < (recoveredBlock25Stack2).
            recoveredBlock25PC := 114.
        ].
        recoveredBlock25Step = 114 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 130] ifFalse: [recoveredBlock25PC := 118].
        ].
        recoveredBlock25Step = 118 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local1.
            recoveredBlock25PC := 119.
        ].
        recoveredBlock25Step = 119 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) + (1).
            recoveredBlock25PC := 120.
        ].
        recoveredBlock25Step = 120 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 121.
        ].
        recoveredBlock25Step = 121 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) esFormula.
            recoveredBlock25PC := 123.
        ].
        recoveredBlock25Step = 123 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) size.
            recoveredBlock25PC := 125.
        ].
        recoveredBlock25Step = 125 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) > (recoveredBlock25Stack2).
            recoveredBlock25PC := 126.
        ].
        recoveredBlock25Step = 126 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 130] ifFalse: [recoveredBlock25PC := 140].
        ].
        recoveredBlock25Step = 130 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 133.
        ].
        recoveredBlock25Step = 133 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 134.
        ].
        recoveredBlock25Step = 134 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 136.
        ].
        recoveredBlock25Step = 136 ifTrue: [
            recoveredBlock25PC := 177.
        ].
        recoveredBlock25Step = 140 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 141.
        ].
        recoveredBlock25Step = 141 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 142.
        ].
        recoveredBlock25Step = 142 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) esFormula.
            recoveredBlock25PC := 144.
        ].
        recoveredBlock25Step = 144 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Local2.
            recoveredBlock25PC := 145.
        ].
        recoveredBlock25Step = 145 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) + (-1).
            recoveredBlock25PC := 146.
        ].
        recoveredBlock25Step = 146 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) at: (recoveredBlock25Stack3).
            recoveredBlock25PC := 148.
        ].
        recoveredBlock25Step = 148 ifTrue: [
            recoveredBlock25Stack3 := self.
            recoveredBlock25PC := 149.
        ].
        recoveredBlock25Step = 149 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) leftBracket.
            recoveredBlock25PC := 151.
        ].
        recoveredBlock25Step = 151 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) = (recoveredBlock25Stack3).
            recoveredBlock25PC := 152.
        ].
        recoveredBlock25Step = 152 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 156] ifFalse: [recoveredBlock25PC := 170].
        ].
        recoveredBlock25Step = 156 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 157.
        ].
        recoveredBlock25Step = 157 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) esFormula.
            recoveredBlock25PC := 159.
        ].
        recoveredBlock25Step = 159 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Local1.
            recoveredBlock25PC := 160.
        ].
        recoveredBlock25Step = 160 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) + (1).
            recoveredBlock25PC := 161.
        ].
        recoveredBlock25Step = 161 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) at: (recoveredBlock25Stack3).
            recoveredBlock25PC := 163.
        ].
        recoveredBlock25Step = 163 ifTrue: [
            recoveredBlock25Stack3 := self.
            recoveredBlock25PC := 164.
        ].
        recoveredBlock25Step = 164 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) rightBracket.
            recoveredBlock25PC := 166.
        ].
        recoveredBlock25Step = 166 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) = (recoveredBlock25Stack3).
            recoveredBlock25PC := 167.
        ].
        recoveredBlock25Step = 167 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 177] ifFalse: [recoveredBlock25PC := 170].
        ].
        recoveredBlock25Step = 170 ifTrue: [
            recoveredBlock25PC := 171.
        ].
        recoveredBlock25Step = 171 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 174.
        ].
        recoveredBlock25Step = 174 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 175.
        ].
        recoveredBlock25Step = 175 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 177.
        ].
        recoveredBlock25Step = 177 ifTrue: [
            recoveredBlock25Stack2 := nil.
            recoveredBlock25PC := 178.
        ].
        recoveredBlock25Step = 178 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Stack2.
            recoveredBlock25PC := 179.
        ].
        recoveredBlock25Step = 179 ifTrue: [
            recoveredBlock25Local2 := recoveredBlock25Stack3.
            recoveredBlock25PC := 180.
        ].
        recoveredBlock25Step = 180 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 181.
        ].
        recoveredBlock25Step = 181 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) asArray.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2051f970; bytecode file offset 0xe1c25c"
!ASAP2SGFormula methodsFor: 'recovered'!
normalizeFormula
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIDsLiteralsAndIndizes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg2.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 32] ifFalse: [recoveredBlock17PC := 40].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := 1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg2.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) + (-1).
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) size.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack3 := 2.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) + (recoveredBlock17Stack2).
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) esFormula.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack3 := recoveredLocal2.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack5 := 2.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) at: (recoveredBlock17Stack5).
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) + (-1).
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) copyFrom: (recoveredBlock17Stack3) to: (recoveredBlock17Stack4).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) leftBracket.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) asString.
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack3 := 1.
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 100.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) rightBracket.
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) asString.
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) esFormula: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20522370; bytecode file offset 0xe1ec50"
!ASAP2SGFormula methodsFor: 'recovered'!
subsitute: recoveredArg1 substitution: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIDsAndIndizes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            (recoveredBlock20Stack1 ~~ nil) ifTrue: [recoveredBlock20PC := 40] ifFalse: [recoveredBlock20PC := 32].
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := 1.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := 1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) size.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal3.
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack3 := 2.
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (recoveredBlock20Stack2).
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack2 := 2.
            recoveredBlock20PC := 61.
        ].
        recoveredBlock20Step = 61 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (-1).
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 72.
        ].
        recoveredBlock20Step = 72 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            recoveredBlock20Stack4 := recoveredLocal1.
            recoveredBlock20PC := 78.
        ].
        recoveredBlock20Step = 78 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) copyFrom: (recoveredBlock20Stack3) to: (recoveredBlock20Stack4).
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) , (recoveredBlock20Stack2).
            recoveredBlock20PC := 82.
        ].
        recoveredBlock20Step = 82 ifTrue: [
            recoveredLocal4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 85.
        ].
        recoveredBlock20Step = 85 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg2.
            recoveredBlock20PC := 88.
        ].
        recoveredBlock20Step = 88 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 89.
        ].
        recoveredBlock20Step = 89 ifTrue: [
            recoveredBlock20Stack3 := 1.
            recoveredBlock20PC := 91.
        ].
        recoveredBlock20Step = 91 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 92.
        ].
        recoveredBlock20Step = 92 ifTrue: [
            recoveredBlock20Stack3 := [].
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) ifAbsent: (recoveredBlock20Stack3).
            recoveredBlock20PC := 96.
        ].
        recoveredBlock20Step = 96 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 97.
        ].
        recoveredBlock20Step = 97 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local1.
            recoveredBlock20PC := 98.
        ].
        recoveredBlock20Step = 98 ifTrue: [
            (recoveredBlock20Stack1 ~~ nil) ifTrue: [recoveredBlock20PC := 118] ifFalse: [recoveredBlock20PC := 102].
        ].
        recoveredBlock20Step = 102 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 105.
        ].
        recoveredBlock20Step = 105 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 106.
        ].
        recoveredBlock20Step = 106 ifTrue: [
            recoveredBlock20Stack3 := 1.
            recoveredBlock20PC := 108.
        ].
        recoveredBlock20Step = 108 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 109.
        ].
        recoveredBlock20Step = 109 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) , (recoveredBlock20Stack2).
            recoveredBlock20PC := 111.
        ].
        recoveredBlock20Step = 111 ifTrue: [
            recoveredLocal4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 114.
        ].
        recoveredBlock20Step = 114 ifTrue: [
            recoveredBlock20PC := 127.
        ].
        recoveredBlock20Step = 118 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 121.
        ].
        recoveredBlock20Step = 121 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 122.
        ].
        recoveredBlock20Step = 122 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) , (recoveredBlock20Stack2).
            recoveredBlock20PC := 124.
        ].
        recoveredBlock20Step = 124 ifTrue: [
            recoveredLocal4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 127.
        ].
        recoveredBlock20Step = 127 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 128.
        ].
        recoveredBlock20Step = 128 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 129.
        ].
        recoveredBlock20Step = 129 ifTrue: [
            recoveredLocal3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 132.
        ].
        recoveredBlock20Step = 132 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054967c; bytecode file offset 0xe45f78"
!ASAP2SGFormula methodsFor: 'recovered'!
evaluateFormulaForOneD: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) checkSize: (recoveredStack1) dataValue: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ErrorSizes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOneDTable: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkOneDTable: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ErrorAxisPoint.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSize: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := Vector.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := [:recoveredBlock99Arg1 :recoveredBlock99Arg2 | 
    | recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg2.
            recoveredBlock99PC := 107.
        ].
        recoveredBlock99Step = 107 ifTrue: [
            recoveredBlock99Stack0 := (recoveredBlock99Stack0) isOneDimensionalParameter: (recoveredBlock99Stack1).
            recoveredBlock99PC := 109.
        ].
        recoveredBlock99Step = 109 ifTrue: [
            (recoveredBlock99Stack0) ifTrue: [recoveredBlock99PC := 112] ifFalse: [recoveredBlock99PC := 128].
        ].
        recoveredBlock99Step = 112 ifTrue: [
            recoveredBlock99Stack0 := recoveredLocal1.
            recoveredBlock99PC := 115.
        ].
        recoveredBlock99Step = 115 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 116.
        ].
        recoveredBlock99Step = 116 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg2.
            recoveredBlock99PC := 117.
        ].
        recoveredBlock99Step = 117 ifTrue: [
            recoveredBlock99Stack3 := recoveredLocal3.
            recoveredBlock99PC := 120.
        ].
        recoveredBlock99Step = 120 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) getZValueAt: (recoveredBlock99Stack3).
            recoveredBlock99PC := 122.
        ].
        recoveredBlock99Step = 122 ifTrue: [
            recoveredBlock99Stack0 := (recoveredBlock99Stack0) at: (recoveredBlock99Stack1) put: (recoveredBlock99Stack2).
            recoveredBlock99PC := 124.
        ].
        recoveredBlock99Step = 124 ifTrue: [
            recoveredBlock99PC := 135.
        ].
        recoveredBlock99Step = 128 ifTrue: [
            recoveredBlock99Stack0 := recoveredLocal1.
            recoveredBlock99PC := 131.
        ].
        recoveredBlock99Step = 131 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 132.
        ].
        recoveredBlock99Step = 132 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg2.
            recoveredBlock99PC := 133.
        ].
        recoveredBlock99Step = 133 ifTrue: [
            recoveredBlock99Stack0 := (recoveredBlock99Stack0) at: (recoveredBlock99Stack1) put: (recoveredBlock99Stack2).
            recoveredBlock99PC := 135.
        ].
        recoveredBlock99Step = 135 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack0.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) keysAndValuesDo: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) getZValueAt: (recoveredStack5).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateFormulaForScalarParameter: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) isError.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 86] ifFalse: [recoveredPC := 213]] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054ed54; bytecode file offset 0xe4b63c"
!ASAP2SGFormula methodsFor: 'recovered'!
extractOperators: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUnaryOpsKeys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBinaryOpsKeys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) size.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack3 := recoveredLocal5.
            recoveredBlock29PC := 43.
        ].
        recoveredBlock29Step = 43 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) > (recoveredBlock29Stack3).
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 48] ifFalse: [recoveredBlock29PC := 56].
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) size.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredLocal5 := recoveredBlock29Stack2.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 183] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056609c; bytecode file offset 0xe629a0"
!ASAP2SGFormula methodsFor: 'recovered'!
replaceUnaryOperators
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'call_80546'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) unaryOperators.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 |
    recoveredBlock30Value0 := ETASFormulaError.
    recoveredBlock30Value1 := ErrorInvalidOperatorCombination.
    recoveredBlock30Value2 := recoveredLocal5.
    recoveredBlock30Value3 := (recoveredBlock30Value2) at: (1).
    recoveredBlock30Value4 := (recoveredBlock30Value1) bindWith: (recoveredBlock30Value3).
    recoveredBlock30Value5 := (recoveredBlock30Value0) create: (recoveredBlock30Value4) position: (1).
    ^recoveredBlock30Value5
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightPartnerBracket: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftBracket.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 177] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightBracket.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) esFormula.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack5 := (recoveredStack5) esFormula.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) esFormula: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUnaryOpsAndIndizes.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20593da4; bytecode file offset 0xe906b0"
!ASAP2SGFormula methodsFor: 'recovered'!
evaluateFormulaForTwoD: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) checkSize: (recoveredStack1) dataValue: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ErrorSizes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTwoDTable: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkTwoDTable: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ErrorAxisPoint.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSize: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := Matrix.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) dim: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := LookupTable.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := [:recoveredBlock119Arg1 :recoveredBlock119Arg2 | 
    | recoveredBlock119Stack0 recoveredBlock119Stack1 recoveredBlock119Stack2 recoveredBlock119Stack3 recoveredBlock119Stack4 recoveredBlock119Stack5 recoveredBlock119PC recoveredBlock119Step recoveredBlock119Done recoveredBlock119Result |
    recoveredBlock119Stack0 := self.
    recoveredBlock119PC := 126.
    recoveredBlock119Done := false.
    [recoveredBlock119Done not] whileTrue: [
        recoveredBlock119Step := recoveredBlock119PC.
        recoveredBlock119Step = 126 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg2.
            recoveredBlock119PC := 127.
        ].
        recoveredBlock119Step = 127 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) isTwoDimensionalParameter: (recoveredBlock119Stack1).
            recoveredBlock119PC := 129.
        ].
        recoveredBlock119Step = 129 ifTrue: [
            (recoveredBlock119Stack0) ifTrue: [recoveredBlock119PC := 132] ifFalse: [recoveredBlock119PC := 150].
        ].
        recoveredBlock119Step = 132 ifTrue: [
            recoveredBlock119Stack0 := recoveredLocal1.
            recoveredBlock119PC := 135.
        ].
        recoveredBlock119Step = 135 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 136.
        ].
        recoveredBlock119Step = 136 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg2.
            recoveredBlock119PC := 137.
        ].
        recoveredBlock119Step = 137 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal4.
            recoveredBlock119PC := 140.
        ].
        recoveredBlock119Step = 140 ifTrue: [
            recoveredBlock119Stack4 := recoveredLocal3.
            recoveredBlock119PC := 143.
        ].
        recoveredBlock119Step = 143 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) getZValueAt: (recoveredBlock119Stack3) y: (recoveredBlock119Stack4).
            recoveredBlock119PC := 145.
        ].
        recoveredBlock119Step = 145 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) at: (recoveredBlock119Stack1) put: (recoveredBlock119Stack2).
            recoveredBlock119PC := 147.
        ].
        recoveredBlock119Step = 147 ifTrue: [
            recoveredBlock119PC := 157.
        ].
        recoveredBlock119Step = 150 ifTrue: [
            recoveredBlock119Stack0 := recoveredLocal1.
            recoveredBlock119PC := 153.
        ].
        recoveredBlock119Step = 153 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 154.
        ].
        recoveredBlock119Step = 154 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg2.
            recoveredBlock119PC := 155.
        ].
        recoveredBlock119Step = 155 ifTrue: [
            recoveredBlock119Stack0 := (recoveredBlock119Stack0) at: (recoveredBlock119Stack1) put: (recoveredBlock119Stack2).
            recoveredBlock119PC := 157.
        ].
        recoveredBlock119Step = 157 ifTrue: [
            recoveredBlock119Result := recoveredBlock119Stack0.
            recoveredBlock119Done := true.
        ].
    ].
    recoveredBlock119Result
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack4) keysAndValuesDo: (recoveredStack5).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack6 := (recoveredStack6) getZValueAt: (recoveredStack7) y: (recoveredStack8).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := (recoveredStack4) evaluateFormulaForScalarParameter: (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := (recoveredStack4) isError.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack4
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredStack3 isInteger]) ifTrue: [(recoveredStack3 + 1 <= recoveredStack2) ifTrue: [recoveredStack3 := recoveredStack3 + 1. recoveredStack4 := recoveredStack3. recoveredPC := 106] ifFalse: [recoveredPC := 244]] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 92] ifFalse: [recoveredPC := 276]] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20595060; bytecode file offset 0xe91984"
!ASAP2SGFormula methodsFor: 'recovered'!
checkOperators
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFuncKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOperatorsAndIndizes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'call_80546'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block28114ba4Arg1 | 
    | block28114ba4Value0 block28114ba4Value1 |
    block28114ba4Value0 := block28114ba4Arg1.
    block28114ba4Value1 := (block28114ba4Value0) at: (2).
    block28114ba4Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Local1 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51Stack3 := 2.
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) at: (recoveredBlock51Stack3).
            recoveredBlock51PC := 66.
        ].
        recoveredBlock51Step = 66 ifTrue: [
            recoveredBlock51Stack3 := recoveredLocal1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) - (recoveredBlock51Stack3).
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) includes: (recoveredBlock51Stack2).
            recoveredBlock51PC := 72.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 74.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack2 := 1.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2).
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) size.
            recoveredBlock51PC := 80.
        ].
        recoveredBlock51Step = 80 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack2 := 1.
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2).
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack2 := '-'.
            recoveredBlock51PC := 90.
        ].
        recoveredBlock51Step = 90 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) equals: (recoveredBlock51Stack2).
            recoveredBlock51PC := 92.
        ].
        recoveredBlock51Step = 92 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 96] ifFalse: [recoveredBlock51PC := 100].
        ].
        recoveredBlock51Step = 96 ifTrue: [
            recoveredBlock51Stack1 := false.
            recoveredBlock51PC := 97.
        ].
        recoveredBlock51Step = 97 ifTrue: [
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 100 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 101.
        ].
        recoveredBlock51Step = 101 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 104] ifFalse: [recoveredBlock51PC := 118].
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 105.
        ].
        recoveredBlock51Step = 105 ifTrue: [
            recoveredBlock51Stack2 := 1.
            recoveredBlock51PC := 107.
        ].
        recoveredBlock51Step = 107 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2).
            recoveredBlock51PC := 109.
        ].
        recoveredBlock51Step = 109 ifTrue: [
            recoveredBlock51Stack2 := '!!'.
            recoveredBlock51PC := 111.
        ].
        recoveredBlock51Step = 111 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) equals: (recoveredBlock51Stack2).
            recoveredBlock51PC := 113.
        ].
        recoveredBlock51Step = 113 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) not.
            recoveredBlock51PC := 114.
        ].
        recoveredBlock51Step = 114 ifTrue: [
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 118 ifTrue: [
            recoveredBlock51Stack1 := false.
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 119 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := ErrorIncorrectPositionForOperator.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) with: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUnaryOpsKeys.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBinaryOpsKeys.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Local1 recoveredBlock171Stack0 recoveredBlock171Stack1 recoveredBlock171Stack2 recoveredBlock171Stack3 recoveredBlock171Stack4 recoveredBlock171Stack5 recoveredBlock171Stack6 recoveredBlock171PC recoveredBlock171Step recoveredBlock171Done recoveredBlock171Result |
    recoveredBlock171Stack0 := self.
    recoveredBlock171PC := 178.
    recoveredBlock171Done := false.
    [recoveredBlock171Done not] whileTrue: [
        recoveredBlock171Step := recoveredBlock171PC.
        recoveredBlock171Step = 178 ifTrue: [
            recoveredBlock171Stack1 := recoveredLocal4.
            recoveredBlock171PC := 181.
        ].
        recoveredBlock171Step = 181 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 182.
        ].
        recoveredBlock171Step = 182 ifTrue: [
            recoveredBlock171Stack3 := 1.
            recoveredBlock171PC := 184.
        ].
        recoveredBlock171Step = 184 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) at: (recoveredBlock171Stack3).
            recoveredBlock171PC := 186.
        ].
        recoveredBlock171Step = 186 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) includes: (recoveredBlock171Stack2).
            recoveredBlock171PC := 188.
        ].
        recoveredBlock171Step = 188 ifTrue: [
            (recoveredBlock171Stack1) ifTrue: [recoveredBlock171PC := 230] ifFalse: [recoveredBlock171PC := 192].
        ].
        recoveredBlock171Step = 192 ifTrue: [
            recoveredBlock171Stack1 := recoveredLocal5.
            recoveredBlock171PC := 195.
        ].
        recoveredBlock171Step = 195 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 196.
        ].
        recoveredBlock171Step = 196 ifTrue: [
            recoveredBlock171Stack3 := 1.
            recoveredBlock171PC := 198.
        ].
        recoveredBlock171Step = 198 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) at: (recoveredBlock171Stack3).
            recoveredBlock171PC := 200.
        ].
        recoveredBlock171Step = 200 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) includes: (recoveredBlock171Stack2).
            recoveredBlock171PC := 202.
        ].
        recoveredBlock171Step = 202 ifTrue: [
            (recoveredBlock171Stack1) ifTrue: [recoveredBlock171PC := 230] ifFalse: [recoveredBlock171PC := 206].
        ].
        recoveredBlock171Step = 206 ifTrue: [
            recoveredBlock171Stack1 := ETASFormulaError.
            recoveredBlock171PC := 208.
        ].
        recoveredBlock171Step = 208 ifTrue: [
            recoveredBlock171Stack2 := ErrorUndefinedOperator.
            recoveredBlock171PC := 210.
        ].
        recoveredBlock171Step = 210 ifTrue: [
            recoveredBlock171Stack3 := Array.
            recoveredBlock171PC := 212.
        ].
        recoveredBlock171Step = 212 ifTrue: [
            recoveredBlock171Stack4 := recoveredBlock171Arg1.
            recoveredBlock171PC := 213.
        ].
        recoveredBlock171Step = 213 ifTrue: [
            recoveredBlock171Stack5 := 2.
            recoveredBlock171PC := 215.
        ].
        recoveredBlock171Step = 215 ifTrue: [
            recoveredBlock171Stack4 := (recoveredBlock171Stack4) at: (recoveredBlock171Stack5).
            recoveredBlock171PC := 217.
        ].
        recoveredBlock171Step = 217 ifTrue: [
            recoveredBlock171Stack4 := (recoveredBlock171Stack4) asString.
            recoveredBlock171PC := 219.
        ].
        recoveredBlock171Step = 219 ifTrue: [
            recoveredBlock171Stack3 := (recoveredBlock171Stack3) with: (recoveredBlock171Stack4).
            recoveredBlock171PC := 221.
        ].
        recoveredBlock171Step = 221 ifTrue: [
            recoveredBlock171Stack4 := recoveredBlock171Arg1.
            recoveredBlock171PC := 222.
        ].
        recoveredBlock171Step = 222 ifTrue: [
            recoveredBlock171Stack5 := 2.
            recoveredBlock171PC := 224.
        ].
        recoveredBlock171Step = 224 ifTrue: [
            recoveredBlock171Stack4 := (recoveredBlock171Stack4) at: (recoveredBlock171Stack5).
            recoveredBlock171PC := 226.
        ].
        recoveredBlock171Step = 226 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) create: (recoveredBlock171Stack2) with: (recoveredBlock171Stack3) position: (recoveredBlock171Stack4).
            recoveredBlock171PC := 229.
        ].
        recoveredBlock171Step = 229 ifTrue: [
            ^recoveredBlock171Stack1
        ].
        recoveredBlock171Step = 230 ifTrue: [
            recoveredBlock171Stack1 := recoveredLocal4.
            recoveredBlock171PC := 233.
        ].
        recoveredBlock171Step = 233 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 234.
        ].
        recoveredBlock171Step = 234 ifTrue: [
            recoveredBlock171Stack3 := 1.
            recoveredBlock171PC := 236.
        ].
        recoveredBlock171Step = 236 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) at: (recoveredBlock171Stack3).
            recoveredBlock171PC := 238.
        ].
        recoveredBlock171Step = 238 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) includes: (recoveredBlock171Stack2).
            recoveredBlock171PC := 240.
        ].
        recoveredBlock171Step = 240 ifTrue: [
            (recoveredBlock171Stack1) ifTrue: [recoveredBlock171PC := 244] ifFalse: [recoveredBlock171PC := 262].
        ].
        recoveredBlock171Step = 244 ifTrue: [
            recoveredBlock171Stack1 := nil.
            recoveredBlock171PC := 245.
        ].
        recoveredBlock171Step = 245 ifTrue: [
            recoveredBlock171Stack2 := self.
            recoveredBlock171PC := 246.
        ].
        recoveredBlock171Step = 246 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Arg1.
            recoveredBlock171PC := 247.
        ].
        recoveredBlock171Step = 247 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) checkUnaryOperators: (recoveredBlock171Stack3).
            recoveredBlock171PC := 249.
        ].
        recoveredBlock171Step = 249 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Stack2.
            recoveredBlock171PC := 250.
        ].
        recoveredBlock171Step = 250 ifTrue: [
            recoveredBlock171Local1 := recoveredBlock171Stack3.
            recoveredBlock171PC := 251.
        ].
        recoveredBlock171Step = 251 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) isError.
            recoveredBlock171PC := 253.
        ].
        recoveredBlock171Step = 253 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 256] ifFalse: [recoveredBlock171PC := 259].
        ].
        recoveredBlock171Step = 256 ifTrue: [
            recoveredBlock171PC := 257.
        ].
        recoveredBlock171Step = 257 ifTrue: [
            recoveredBlock171Stack1 := recoveredBlock171Local1.
            recoveredBlock171PC := 258.
        ].
        recoveredBlock171Step = 258 ifTrue: [
            ^recoveredBlock171Stack1
        ].
        recoveredBlock171Step = 259 ifTrue: [
            recoveredBlock171PC := 277.
        ].
        recoveredBlock171Step = 262 ifTrue: [
            recoveredBlock171Stack1 := nil.
            recoveredBlock171PC := 263.
        ].
        recoveredBlock171Step = 263 ifTrue: [
            recoveredBlock171Stack2 := self.
            recoveredBlock171PC := 264.
        ].
        recoveredBlock171Step = 264 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Arg1.
            recoveredBlock171PC := 265.
        ].
        recoveredBlock171Step = 265 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) checkBinaryOperators: (recoveredBlock171Stack3).
            recoveredBlock171PC := 267.
        ].
        recoveredBlock171Step = 267 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Stack2.
            recoveredBlock171PC := 268.
        ].
        recoveredBlock171Step = 268 ifTrue: [
            recoveredBlock171Local1 := recoveredBlock171Stack3.
            recoveredBlock171PC := 269.
        ].
        recoveredBlock171Step = 269 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) isError.
            recoveredBlock171PC := 271.
        ].
        recoveredBlock171Step = 271 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 274] ifFalse: [recoveredBlock171PC := 277].
        ].
        recoveredBlock171Step = 274 ifTrue: [
            recoveredBlock171PC := 275.
        ].
        recoveredBlock171Step = 275 ifTrue: [
            recoveredBlock171Stack1 := recoveredBlock171Local1.
            recoveredBlock171PC := 276.
        ].
        recoveredBlock171Step = 276 ifTrue: [
            ^recoveredBlock171Stack1
        ].
        recoveredBlock171Step = 277 ifTrue: [
            recoveredBlock171Result := recoveredBlock171Stack1.
            recoveredBlock171Done := true.
        ].
    ].
    recoveredBlock171Result
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f4d0c; bytecode file offset 0xef1624"
!ASAP2SGFormula methodsFor: 'recovered'!
checkNamens
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIdentifierNamens.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFuncKeys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStringsAndIndizes.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Local1 recoveredBlock41Local2 recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41Stack5 recoveredBlock41Stack6 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := false.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Local2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            recoveredBlock41Stack2 := [:recoveredBlock41Block55Arg1 | 
    | recoveredBlock41Block55Value0 recoveredBlock41Block55Value1 recoveredBlock41Block55Value2 recoveredBlock41Block55Value3 recoveredBlock41Block55Value4 |
    recoveredBlock41Block55Value0 := recoveredBlock41Block55Arg1.
    recoveredBlock41Block55Value1 := recoveredBlock41Arg1.
    recoveredBlock41Block55Value2 := (recoveredBlock41Block55Value1) at: (1).
    recoveredBlock41Block55Value3 := (recoveredBlock41Block55Value2) trimBlanks.
    recoveredBlock41Block55Value4 := (recoveredBlock41Block55Value0) = (recoveredBlock41Block55Value3).
    recoveredBlock41Block55Value4
].
            recoveredBlock41PC := 74.
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) findFirst: (recoveredBlock41Stack2).
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack2 := 0.
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) > (recoveredBlock41Stack2).
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 82] ifFalse: [recoveredBlock41PC := 204].
        ].
        recoveredBlock41Step = 82 ifTrue: [
            recoveredBlock41Stack1 := true.
            recoveredBlock41PC := 83.
        ].
        recoveredBlock41Step = 83 ifTrue: [
            recoveredBlock41Local2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 86.
        ].
        recoveredBlock41Step = 86 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 90.
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41Stack3 := 2.
            recoveredBlock41PC := 92.
        ].
        recoveredBlock41Step = 92 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) at: (recoveredBlock41Stack3).
            recoveredBlock41PC := 94.
        ].
        recoveredBlock41Step = 94 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 97.
        ].
        recoveredBlock41Step = 97 ifTrue: [
            recoveredBlock41Stack4 := 1.
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) at: (recoveredBlock41Stack4).
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) size.
            recoveredBlock41PC := 102.
        ].
        recoveredBlock41Step = 102 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) + (recoveredBlock41Stack3).
            recoveredBlock41PC := 103.
        ].
        recoveredBlock41Step = 103 ifTrue: [
            recoveredBlock41Stack3 := true.
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) checkNameArea: (recoveredBlock41Stack2) function: (recoveredBlock41Stack3).
            recoveredBlock41PC := 106.
        ].
        recoveredBlock41Step = 106 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 110] ifFalse: [recoveredBlock41PC := 138].
        ].
        recoveredBlock41Step = 110 ifTrue: [
            recoveredBlock41Stack1 := ETASFormulaError.
            recoveredBlock41PC := 112.
        ].
        recoveredBlock41Step = 112 ifTrue: [
            recoveredBlock41Stack2 := ErrorFunctionName.
            recoveredBlock41PC := 114.
        ].
        recoveredBlock41Step = 114 ifTrue: [
            recoveredBlock41Stack3 := Array.
            recoveredBlock41PC := 116.
        ].
        recoveredBlock41Step = 116 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 119.
        ].
        recoveredBlock41Step = 119 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 121.
        ].
        recoveredBlock41Step = 121 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 123.
        ].
        recoveredBlock41Step = 123 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) asString.
            recoveredBlock41PC := 125.
        ].
        recoveredBlock41Step = 125 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) with: (recoveredBlock41Stack4).
            recoveredBlock41PC := 127.
        ].
        recoveredBlock41Step = 127 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 130.
        ].
        recoveredBlock41Step = 130 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 132.
        ].
        recoveredBlock41Step = 132 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 134.
        ].
        recoveredBlock41Step = 134 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) create: (recoveredBlock41Stack2) with: (recoveredBlock41Stack3) position: (recoveredBlock41Stack4).
            recoveredBlock41PC := 137.
        ].
        recoveredBlock41Step = 137 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 138 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 139.
        ].
        recoveredBlock41Step = 139 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 142.
        ].
        recoveredBlock41Step = 142 ifTrue: [
            recoveredBlock41Stack3 := 2.
            recoveredBlock41PC := 144.
        ].
        recoveredBlock41Step = 144 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) at: (recoveredBlock41Stack3).
            recoveredBlock41PC := 146.
        ].
        recoveredBlock41Step = 146 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 149.
        ].
        recoveredBlock41Step = 149 ifTrue: [
            recoveredBlock41Stack4 := 1.
            recoveredBlock41PC := 151.
        ].
        recoveredBlock41Step = 151 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) at: (recoveredBlock41Stack4).
            recoveredBlock41PC := 153.
        ].
        recoveredBlock41Step = 153 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) size.
            recoveredBlock41PC := 154.
        ].
        recoveredBlock41Step = 154 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) + (recoveredBlock41Stack3).
            recoveredBlock41PC := 155.
        ].
        recoveredBlock41Step = 155 ifTrue: [
            recoveredBlock41Stack3 := self.
            recoveredBlock41PC := 156.
        ].
        recoveredBlock41Step = 156 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) functions.
            recoveredBlock41PC := 158.
        ].
        recoveredBlock41Step = 158 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 161.
        ].
        recoveredBlock41Step = 161 ifTrue: [
            recoveredBlock41Stack5 := 1.
            recoveredBlock41PC := 163.
        ].
        recoveredBlock41Step = 163 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 165.
        ].
        recoveredBlock41Step = 165 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) at: (recoveredBlock41Stack4).
            recoveredBlock41PC := 167.
        ].
        recoveredBlock41Step = 167 ifTrue: [
            recoveredBlock41Stack4 := 2.
            recoveredBlock41PC := 169.
        ].
        recoveredBlock41Step = 169 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) at: (recoveredBlock41Stack4).
            recoveredBlock41PC := 171.
        ].
        recoveredBlock41Step = 171 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) checkParameterNumber: (recoveredBlock41Stack2) defParamNumber: (recoveredBlock41Stack3).
            recoveredBlock41PC := 173.
        ].
        recoveredBlock41Step = 173 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 176] ifFalse: [recoveredBlock41PC := 204].
        ].
        recoveredBlock41Step = 176 ifTrue: [
            recoveredBlock41Stack1 := ETASFormulaError.
            recoveredBlock41PC := 178.
        ].
        recoveredBlock41Step = 178 ifTrue: [
            recoveredBlock41Stack2 := ErrorFunctionParameter.
            recoveredBlock41PC := 180.
        ].
        recoveredBlock41Step = 180 ifTrue: [
            recoveredBlock41Stack3 := Array.
            recoveredBlock41PC := 182.
        ].
        recoveredBlock41Step = 182 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 185.
        ].
        recoveredBlock41Step = 185 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 187.
        ].
        recoveredBlock41Step = 187 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 189.
        ].
        recoveredBlock41Step = 189 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) asString.
            recoveredBlock41PC := 191.
        ].
        recoveredBlock41Step = 191 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) with: (recoveredBlock41Stack4).
            recoveredBlock41PC := 193.
        ].
        recoveredBlock41Step = 193 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 196.
        ].
        recoveredBlock41Step = 196 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 198.
        ].
        recoveredBlock41Step = 198 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 200.
        ].
        recoveredBlock41Step = 200 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) create: (recoveredBlock41Stack2) with: (recoveredBlock41Stack3) position: (recoveredBlock41Stack4).
            recoveredBlock41PC := 203.
        ].
        recoveredBlock41Step = 203 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 204 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 207.
        ].
        recoveredBlock41Step = 207 ifTrue: [
            recoveredBlock41Stack2 := [:recoveredBlock41Block207Arg1 | 
    | recoveredBlock41Block207Value0 recoveredBlock41Block207Value1 recoveredBlock41Block207Value2 recoveredBlock41Block207Value3 recoveredBlock41Block207Value4 |
    recoveredBlock41Block207Value0 := recoveredBlock41Block207Arg1.
    recoveredBlock41Block207Value1 := recoveredBlock41Arg1.
    recoveredBlock41Block207Value2 := (recoveredBlock41Block207Value1) at: (1).
    recoveredBlock41Block207Value3 := (recoveredBlock41Block207Value2) trimBlanks.
    recoveredBlock41Block207Value4 := (recoveredBlock41Block207Value0) = (recoveredBlock41Block207Value3).
    recoveredBlock41Block207Value4
].
            recoveredBlock41PC := 226.
        ].
        recoveredBlock41Step = 226 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) findFirst: (recoveredBlock41Stack2).
            recoveredBlock41PC := 228.
        ].
        recoveredBlock41Step = 228 ifTrue: [
            recoveredBlock41Stack2 := 0.
            recoveredBlock41PC := 230.
        ].
        recoveredBlock41Step = 230 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) > (recoveredBlock41Stack2).
            recoveredBlock41PC := 231.
        ].
        recoveredBlock41Step = 231 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 234] ifFalse: [recoveredBlock41PC := 290].
        ].
        recoveredBlock41Step = 234 ifTrue: [
            recoveredBlock41Stack1 := true.
            recoveredBlock41PC := 235.
        ].
        recoveredBlock41Step = 235 ifTrue: [
            recoveredBlock41Local2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 238.
        ].
        recoveredBlock41Step = 238 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 239.
        ].
        recoveredBlock41Step = 239 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 242.
        ].
        recoveredBlock41Step = 242 ifTrue: [
            recoveredBlock41Stack3 := 2.
            recoveredBlock41PC := 244.
        ].
        recoveredBlock41Step = 244 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) at: (recoveredBlock41Stack3).
            recoveredBlock41PC := 246.
        ].
        recoveredBlock41Step = 246 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 249.
        ].
        recoveredBlock41Step = 249 ifTrue: [
            recoveredBlock41Stack4 := 1.
            recoveredBlock41PC := 251.
        ].
        recoveredBlock41Step = 251 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) at: (recoveredBlock41Stack4).
            recoveredBlock41PC := 253.
        ].
        recoveredBlock41Step = 253 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) size.
            recoveredBlock41PC := 254.
        ].
        recoveredBlock41Step = 254 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) + (recoveredBlock41Stack3).
            recoveredBlock41PC := 255.
        ].
        recoveredBlock41Step = 255 ifTrue: [
            recoveredBlock41Stack3 := false.
            recoveredBlock41PC := 256.
        ].
        recoveredBlock41Step = 256 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) checkNameArea: (recoveredBlock41Stack2) function: (recoveredBlock41Stack3).
            recoveredBlock41PC := 258.
        ].
        recoveredBlock41Step = 258 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 262] ifFalse: [recoveredBlock41PC := 290].
        ].
        recoveredBlock41Step = 262 ifTrue: [
            recoveredBlock41Stack1 := ETASFormulaError.
            recoveredBlock41PC := 264.
        ].
        recoveredBlock41Step = 264 ifTrue: [
            recoveredBlock41Stack2 := ErrorIdentifierName.
            recoveredBlock41PC := 266.
        ].
        recoveredBlock41Step = 266 ifTrue: [
            recoveredBlock41Stack3 := Array.
            recoveredBlock41PC := 268.
        ].
        recoveredBlock41Step = 268 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 271.
        ].
        recoveredBlock41Step = 271 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 273.
        ].
        recoveredBlock41Step = 273 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 275.
        ].
        recoveredBlock41Step = 275 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) asString.
            recoveredBlock41PC := 277.
        ].
        recoveredBlock41Step = 277 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) with: (recoveredBlock41Stack4).
            recoveredBlock41PC := 279.
        ].
        recoveredBlock41Step = 279 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 282.
        ].
        recoveredBlock41Step = 282 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 284.
        ].
        recoveredBlock41Step = 284 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 286 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) create: (recoveredBlock41Stack2) with: (recoveredBlock41Stack3) position: (recoveredBlock41Stack4).
            recoveredBlock41PC := 289.
        ].
        recoveredBlock41Step = 289 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 290 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Local2.
            recoveredBlock41PC := 293.
        ].
        recoveredBlock41Step = 293 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 377] ifFalse: [recoveredBlock41PC := 296].
        ].
        recoveredBlock41Step = 296 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 299.
        ].
        recoveredBlock41Step = 299 ifTrue: [
            recoveredBlock41Stack2 := 1.
            recoveredBlock41PC := 301.
        ].
        recoveredBlock41Step = 301 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) at: (recoveredBlock41Stack2).
            recoveredBlock41PC := 303.
        ].
        recoveredBlock41Step = 303 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 306.
        ].
        recoveredBlock41Step = 306 ifTrue: [
            recoveredBlock41Stack1 := false.
            recoveredBlock41PC := 307.
        ].
        recoveredBlock41Step = 307 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 310.
        ].
        recoveredBlock41Step = 310 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) trimBlanks.
            recoveredBlock41PC := 312.
        ].
        recoveredBlock41Step = 312 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isLiteral.
            recoveredBlock41PC := 314.
        ].
        recoveredBlock41Step = 314 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 318] ifFalse: [recoveredBlock41PC := 338].
        ].
        recoveredBlock41Step = 318 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 321.
        ].
        recoveredBlock41Step = 321 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) trimBlanks.
            recoveredBlock41PC := 323.
        ].
        recoveredBlock41Step = 323 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Local1.
            recoveredBlock41PC := 326.
        ].
        recoveredBlock41Step = 326 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) trimBlanks.
            recoveredBlock41PC := 328.
        ].
        recoveredBlock41Step = 328 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) size.
            recoveredBlock41PC := 329.
        ].
        recoveredBlock41Step = 329 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) at: (recoveredBlock41Stack3).
            recoveredBlock41PC := 331.
        ].
        recoveredBlock41Step = 331 ifTrue: [
            recoveredBlock41Stack3 := $..
            recoveredBlock41PC := 334.
        ].
        recoveredBlock41Step = 334 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) ~= (recoveredBlock41Stack3).
            recoveredBlock41PC := 335.
        ].
        recoveredBlock41Step = 335 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 348] ifFalse: [recoveredBlock41PC := 338].
        ].
        recoveredBlock41Step = 338 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 341.
        ].
        recoveredBlock41Step = 341 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) trimBlanks.
            recoveredBlock41PC := 343.
        ].
        recoveredBlock41Step = 343 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isBool.
            recoveredBlock41PC := 345.
        ].
        recoveredBlock41Step = 345 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 348] ifFalse: [recoveredBlock41PC := 370].
        ].
        recoveredBlock41Step = 348 ifTrue: [
            recoveredBlock41PC := 349.
        ].
        recoveredBlock41Step = 349 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 350.
        ].
        recoveredBlock41Step = 350 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 353.
        ].
        recoveredBlock41Step = 353 ifTrue: [
            recoveredBlock41Stack3 := 2.
            recoveredBlock41PC := 355.
        ].
        recoveredBlock41Step = 355 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) at: (recoveredBlock41Stack3).
            recoveredBlock41PC := 357.
        ].
        recoveredBlock41Step = 357 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 360.
        ].
        recoveredBlock41Step = 360 ifTrue: [
            recoveredBlock41Stack4 := 1.
            recoveredBlock41PC := 362.
        ].
        recoveredBlock41Step = 362 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) at: (recoveredBlock41Stack4).
            recoveredBlock41PC := 364.
        ].
        recoveredBlock41Step = 364 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) size.
            recoveredBlock41PC := 365.
        ].
        recoveredBlock41Step = 365 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) + (recoveredBlock41Stack3).
            recoveredBlock41PC := 366.
        ].
        recoveredBlock41Step = 366 ifTrue: [
            recoveredBlock41Stack3 := false.
            recoveredBlock41PC := 367.
        ].
        recoveredBlock41Step = 367 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) checkNameArea: (recoveredBlock41Stack2) function: (recoveredBlock41Stack3).
            recoveredBlock41PC := 369.
        ].
        recoveredBlock41Step = 369 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) not.
            recoveredBlock41PC := 370.
        ].
        recoveredBlock41Step = 370 ifTrue: [
            recoveredBlock41Local2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 373.
        ].
        recoveredBlock41Step = 373 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 374.
        ].
        recoveredBlock41Step = 374 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 377.
        ].
        recoveredBlock41Step = 377 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 378.
        ].
        recoveredBlock41Step = 378 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local2.
            recoveredBlock41PC := 381.
        ].
        recoveredBlock41Step = 381 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 413] ifFalse: [recoveredBlock41PC := 384].
        ].
        recoveredBlock41Step = 384 ifTrue: [
            recoveredBlock41PC := 385.
        ].
        recoveredBlock41Step = 385 ifTrue: [
            recoveredBlock41Stack1 := ETASFormulaError.
            recoveredBlock41PC := 387.
        ].
        recoveredBlock41Step = 387 ifTrue: [
            recoveredBlock41Stack2 := ErrorNotANumber.
            recoveredBlock41PC := 389.
        ].
        recoveredBlock41Step = 389 ifTrue: [
            recoveredBlock41Stack3 := Array.
            recoveredBlock41PC := 391.
        ].
        recoveredBlock41Step = 391 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 394.
        ].
        recoveredBlock41Step = 394 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 396.
        ].
        recoveredBlock41Step = 396 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 398.
        ].
        recoveredBlock41Step = 398 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) asString.
            recoveredBlock41PC := 400.
        ].
        recoveredBlock41Step = 400 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) with: (recoveredBlock41Stack4).
            recoveredBlock41PC := 402.
        ].
        recoveredBlock41Step = 402 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 405.
        ].
        recoveredBlock41Step = 405 ifTrue: [
            recoveredBlock41Stack5 := 2.
            recoveredBlock41PC := 407.
        ].
        recoveredBlock41Step = 407 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) at: (recoveredBlock41Stack5).
            recoveredBlock41PC := 409.
        ].
        recoveredBlock41Step = 409 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) create: (recoveredBlock41Stack2) with: (recoveredBlock41Stack3) position: (recoveredBlock41Stack4).
            recoveredBlock41PC := 412.
        ].
        recoveredBlock41Step = 412 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 413 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fccf4; bytecode file offset 0xef9674"
!ASAP2SGFormula methodsFor: 'recovered'!
evaluateFormulaForScalarParameter: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isBoolean.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isNumber.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 38].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getZValues.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isScalarValue: (recoveredBlock13Stack1).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 56] ifFalse: [recoveredBlock13PC := 52].
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal4.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            ^recoveredBlock13Stack0
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack0 := 'Kli'.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := 'Call_345906'.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) == (recoveredBlock13Stack1).
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal3.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) asExactString.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) at: (recoveredBlock13Stack1) put: (recoveredBlock13Stack2).
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateEvalString: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 |
    recoveredBlock82Value0 := Compiler.
    recoveredBlock82Value1 := recoveredLocal5.
    recoveredBlock82Value2 := (recoveredBlock82Value0) evaluate: (recoveredBlock82Value1).
    recoveredBlock82Value3 := recoveredBlock82Value2.
    recoveredLocal4 := recoveredBlock82Value3.
    recoveredBlock82Value2
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 recoveredBlock102Value4 |
    recoveredBlock102Value0 := recoveredBlock102Arg1.
    recoveredBlock102Value1 := recoveredBlock102Arg1.
    recoveredBlock102Value2 := (recoveredBlock102Value1) createETASFormulaError.
    recoveredBlock102Value3 := recoveredBlock102Value2.
    recoveredLocal4 := recoveredBlock102Value3.
    recoveredBlock102Value4 := (recoveredBlock102Value0) exitWith: (recoveredBlock102Value2).
    recoveredBlock102Value4
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 'BOSCH_CC'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := CompilerError.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) createETASFormulaError.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 253].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInf.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNaN.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 253].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := [:recoveredBlock175Arg1 :recoveredBlock175Arg2 | 
    | recoveredBlock175Value0 recoveredBlock175Value1 recoveredBlock175Value2 recoveredBlock175Value3 recoveredBlock175Value4 recoveredBlock175Value5 recoveredBlock175Value6 recoveredBlock175Value7 recoveredBlock175Value8 recoveredBlock175Value9 |
    recoveredBlock175Value0 := recoveredBlock175Arg1.
    recoveredBlock175Value1 := (recoveredBlock175Value0) , (', ').
    recoveredBlock175Value2 := recoveredBlock175Arg2.
    recoveredBlock175Value3 := (recoveredBlock175Value1) , (recoveredBlock175Value2).
    recoveredBlock175Value4 := (recoveredBlock175Value3) , (' = ').
    recoveredBlock175Value5 := recoveredLocal3.
    recoveredBlock175Value6 := recoveredBlock175Arg2.
    recoveredBlock175Value7 := (recoveredBlock175Value5) at: (recoveredBlock175Value6).
    recoveredBlock175Value8 := (recoveredBlock175Value4) , (recoveredBlock175Value7).
    recoveredBlock175Value9 := (recoveredBlock175Value8) , (' ').
    recoveredBlock175Value9
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := 'Result of '.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := '  with values '.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := ' is '.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock253Value0 recoveredBlock253Value1 recoveredBlock253Value2 recoveredBlock253Value3 recoveredBlock253Value4 |
    recoveredBlock253Value0 := recoveredLocal4.
    recoveredBlock253Value1 := WriteStream.
    recoveredBlock253Value2 := String.
    recoveredBlock253Value3 := (recoveredBlock253Value2) new.
    recoveredBlock253Value4 := (recoveredBlock253Value1) on: (recoveredBlock253Value3).
    (recoveredBlock253Value0) printOn: (recoveredBlock253Value4).
    nil
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := [:block2811c2e4Arg1 | 
    | block2811c2e4Value0 block2811c2e4Value1 block2811c2e4Value2 |
    block2811c2e4Value0 := block2811c2e4Arg1.
    block2811c2e4Value1 := block2811c2e4Arg1.
    block2811c2e4Value2 := (block2811c2e4Value0) exitWith: (block2811c2e4Value1).
    block2811c2e4Value2
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := [:recoveredBlock303Arg1 :recoveredBlock303Arg2 | 
    | recoveredBlock303Value0 recoveredBlock303Value1 recoveredBlock303Value2 recoveredBlock303Value3 recoveredBlock303Value4 recoveredBlock303Value5 recoveredBlock303Value6 recoveredBlock303Value7 recoveredBlock303Value8 recoveredBlock303Value9 |
    recoveredBlock303Value0 := recoveredBlock303Arg1.
    recoveredBlock303Value1 := (recoveredBlock303Value0) , (', ').
    recoveredBlock303Value2 := recoveredBlock303Arg2.
    recoveredBlock303Value3 := (recoveredBlock303Value1) , (recoveredBlock303Value2).
    recoveredBlock303Value4 := (recoveredBlock303Value3) , (' = ').
    recoveredBlock303Value5 := recoveredLocal3.
    recoveredBlock303Value6 := recoveredBlock303Arg2.
    recoveredBlock303Value7 := (recoveredBlock303Value5) at: (recoveredBlock303Value6).
    recoveredBlock303Value8 := (recoveredBlock303Value4) , (recoveredBlock303Value7).
    recoveredBlock303Value9 := (recoveredBlock303Value8) , (' ').
    recoveredBlock303Value9
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := 'Result of '.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := '  with values '.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := ' cannot be printed, because of an internal error'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolType: (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertToBoolean.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 430].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScalarType: (recoveredStack1).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 430].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertToScalar.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

